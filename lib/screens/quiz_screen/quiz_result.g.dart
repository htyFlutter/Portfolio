// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_result.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuizResultCollection on Isar {
  IsarCollection<QuizResult> get quizResults => this.collection();
}

const QuizResultSchema = CollectionSchema(
  name: r'QuizResult',
  id: -9107712222507511645,
  properties: {
    r'correctAnswerRate': PropertySchema(
      id: 0,
      name: r'correctAnswerRate',
      type: IsarType.double,
    ),
    r'score': PropertySchema(
      id: 1,
      name: r'score',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 2,
      name: r'title',
      type: IsarType.string,
    ),
    r'totalStudyTime': PropertySchema(
      id: 3,
      name: r'totalStudyTime',
      type: IsarType.double,
    )
  },
  estimateSize: _quizResultEstimateSize,
  serialize: _quizResultSerialize,
  deserialize: _quizResultDeserialize,
  deserializeProp: _quizResultDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _quizResultGetId,
  getLinks: _quizResultGetLinks,
  attach: _quizResultAttach,
  version: '3.1.0+1',
);

int _quizResultEstimateSize(
  QuizResult object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _quizResultSerialize(
  QuizResult object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.correctAnswerRate);
  writer.writeLong(offsets[1], object.score);
  writer.writeString(offsets[2], object.title);
  writer.writeDouble(offsets[3], object.totalStudyTime);
}

QuizResult _quizResultDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizResult();
  object.correctAnswerRate = reader.readDouble(offsets[0]);
  object.id = id;
  object.score = reader.readLong(offsets[1]);
  object.title = reader.readStringOrNull(offsets[2]);
  object.totalStudyTime = reader.readDouble(offsets[3]);
  return object;
}

P _quizResultDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quizResultGetId(QuizResult object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _quizResultGetLinks(QuizResult object) {
  return [];
}

void _quizResultAttach(IsarCollection<dynamic> col, Id id, QuizResult object) {
  object.id = id;
}

extension QuizResultQueryWhereSort
    on QueryBuilder<QuizResult, QuizResult, QWhere> {
  QueryBuilder<QuizResult, QuizResult, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuizResultQueryWhere
    on QueryBuilder<QuizResult, QuizResult, QWhereClause> {
  QueryBuilder<QuizResult, QuizResult, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension QuizResultQueryFilter
    on QueryBuilder<QuizResult, QuizResult, QFilterCondition> {
  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      correctAnswerRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswerRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      correctAnswerRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctAnswerRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      correctAnswerRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctAnswerRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      correctAnswerRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctAnswerRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> scoreEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> scoreGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> scoreLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> scoreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'score',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      totalStudyTimeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalStudyTime',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      totalStudyTimeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalStudyTime',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      totalStudyTimeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalStudyTime',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterFilterCondition>
      totalStudyTimeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalStudyTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension QuizResultQueryObject
    on QueryBuilder<QuizResult, QuizResult, QFilterCondition> {}

extension QuizResultQueryLinks
    on QueryBuilder<QuizResult, QuizResult, QFilterCondition> {}

extension QuizResultQuerySortBy
    on QueryBuilder<QuizResult, QuizResult, QSortBy> {
  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> sortByCorrectAnswerRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerRate', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy>
      sortByCorrectAnswerRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerRate', Sort.desc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> sortByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> sortByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> sortByTotalStudyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTime', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy>
      sortByTotalStudyTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTime', Sort.desc);
    });
  }
}

extension QuizResultQuerySortThenBy
    on QueryBuilder<QuizResult, QuizResult, QSortThenBy> {
  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenByCorrectAnswerRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerRate', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy>
      thenByCorrectAnswerRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerRate', Sort.desc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy> thenByTotalStudyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTime', Sort.asc);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QAfterSortBy>
      thenByTotalStudyTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTime', Sort.desc);
    });
  }
}

extension QuizResultQueryWhereDistinct
    on QueryBuilder<QuizResult, QuizResult, QDistinct> {
  QueryBuilder<QuizResult, QuizResult, QDistinct>
      distinctByCorrectAnswerRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctAnswerRate');
    });
  }

  QueryBuilder<QuizResult, QuizResult, QDistinct> distinctByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'score');
    });
  }

  QueryBuilder<QuizResult, QuizResult, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizResult, QuizResult, QDistinct> distinctByTotalStudyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalStudyTime');
    });
  }
}

extension QuizResultQueryProperty
    on QueryBuilder<QuizResult, QuizResult, QQueryProperty> {
  QueryBuilder<QuizResult, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuizResult, double, QQueryOperations>
      correctAnswerRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctAnswerRate');
    });
  }

  QueryBuilder<QuizResult, int, QQueryOperations> scoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'score');
    });
  }

  QueryBuilder<QuizResult, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<QuizResult, double, QQueryOperations> totalStudyTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalStudyTime');
    });
  }
}
