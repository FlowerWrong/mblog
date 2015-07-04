# [elasticsearch](http://es.xiaoleilu.com/)

### [install](https://www.elastic.co/guide/en/elasticsearch/reference/current/_installation.html)

```ruby
curl -L -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.0.tar.gz
tar -xvf elasticsearch-1.6.0.tar.gz
cd elasticsearch-1.6.0/
./bin/plugin -i elasticsearch/marvel/latest
cd elasticsearch-1.6.0/bin
./elasticsearch

curl 'localhost:9200/_cat/nodes?v'
```

### startup

```ruby
Relational DB -> Databases -> Tables -> Rows -> Columns
Elasticsearch -> Indices   -> Types  -> Documents -> Fields
```

* 索引（名词） 如上文所述，一个索引(index)就像是传统关系数据库中的数据库，它是相关文档存储的地方，index的复数是indices 或indexes。
* 索引（动词） 「索引一个文档」表示把一个文档存储到索引（名词）里，以便它可以被检索或者查询。这很像SQL中的INSERT关键字，差别是，如果文档已经存在，新的文档将覆盖旧的文档。
* 倒排索引 传统数据库为特定列增加一个索引，例如B-Tree索引来加速检索。Elasticsearch和Lucene使用一种叫做倒排索引(inverted index)的数据结构来达到相同目的。

### 聚合(aggregations)

### 分片(shards)

* 主要分片(primary shard)和复制分片(replica shard)
* 单点故障

### 集群(cluster)、节点(node)和分片(shard)

* Elasticsearch用于构建高可用和可扩展的系统。扩展的方式可以是购买更好的服务器(纵向扩展(vertical scale or scaling up))或者购买更多的服务器（横向扩展(horizontal scale or scaling out)）

### 文档，索引

* 自增ID
* mget
* bulk

#### 搜索

* 映射(Mapping) 	数据在每个字段中的解释说明
* 分析(Analysis) 	全文是如何处理的可以被搜索的
* 领域特定语言查询(Query DSL) 	Elasticsearch使用的灵活的、强大的查询语言
* -、:、/或"
* 索引中每个文档都有一个类型(type)。 每个类型拥有自己的映射(mapping)或者模式定义(schema definition)

#### 最重要的查询过滤语句

* term 过滤
* terms 过滤
* range 过滤
* exists 和 missing 过滤
* match_all 查询
* match 查询
* multi_match 查询
* bool 查询
* validate API 可以验证一条查询语句是否合法。
* sort 参数
* bool 过滤

```ruby
bool 过滤可以用来合并多个过滤条件查询结果的布尔逻辑，它包含一下操作符：
must :: 多个查询条件的完全匹配,相当于 and。
must_not :: 多个查询条件的相反匹配，相当于 not。
should :: 至少有一个查询条件匹配, 相当于 or。
```

### [中文分词](https://github.com/medcl/elasticsearch-rtf/tree/1.6.0)

```ruby
curl -XPUT 'http://localhost:9200/movietogether' -d '
{
   "page": {
      "properties": {
         "title": {
            "type": "string",
            "indexAnalyzer": "ik",
            "searchAnalyzer": "ik"
         },
         "content": {
            "type": "string",
            "indexAnalyzer": "ik",
            "searchAnalyzer": "ik"
         }
      }
   }
}'

curl 'http://localhost:9200/movietogether/_analyze?analyzer=ik&pretty=true' -d'
{
    "text":"中华人民共和国国歌"
}'
```

```yaml
index:
  analysis:
    tokenizer:
      mmseg_maxword:
          type: mmseg
          seg_type: "max_word"
      mmseg_complex:
          type: mmseg
          seg_type: "complex"
      mmseg_simple:
          type: mmseg
          seg_type: "simple"
    analyzer:
      mmseg:
          alias: [news_analyzer, mmseg_analyzer]
          type: org.elasticsearch.index.analysis.MMsegAnalyzerProvider
      ik:
          alias: [ik_analyzer]
          type: org.elasticsearch.index.analysis.IkAnalyzerProvider
      ik_max_word:
          type: ik
          use_smart: false
      ik_smart:
          type: ik
          use_smart: true
```
