allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

subprojects {
    afterEvaluate {
        if (hasProperty("android")) {
            val android = extensions.findByName("android") as? com.android.build.gradle.BaseExtension

            // 古いプラグイン（isar 等）だけ namespace を補完。既存の namespace は上書きしない
            if (android?.namespace.isNullOrBlank()) {
                val fallbackNamespace = project.group?.toString()?.takeIf { it.isNotBlank() }
                    ?: "com.example.${project.name.replace("-", "_")}"
                android?.namespace = fallbackNamespace
            }
        }
    }
}
