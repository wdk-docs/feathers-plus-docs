��          �               \  3  ]  (   �     �  �   �     �     �  0  �          +  �   1  	   �     �  S   �  �   "  �   �     �  '  �     	  �   %	  �  
  3  �  (   �     �  �               0  (     Y     k  �   q  	   �       S     �   b  �          '        H  �   e   By default, batch-loader uses the standard Map which simply grows until the batch-loader is released. A custom cache is provided as a convenience if you want to persist caches for longer periods of time. It implements a **least-recently-used** algorithm and allows you to limit the number of records cached. Creating a new batch-loader per Request. Full implementation: In many applications, a server using batch-loader serves requests to many different users with different access permissions. It may be dangerous to use one cache across many users, and it is encouraged to create a new batch-loader per request: Knex.js Loading by alternative keys. Occasionally, some kind of value can be accessed in multiple ways. For example, perhaps a “User” type can be loaded not only by an “id” but also by a “username” value. If the same user is loaded by both keys, then it may be useful to fill both caches when a user is loaded from either source: Persistent caches Redis Redis is a very simple key-value store which provides the batch load method MGET which makes it very well suited for use with batch-loader. RethinkDB SQLite The default cache is appropriate when requests to your application are short-lived. This example demonstrates how to use batch-loader with SQL databases via Knex.js, which is a SQL query builder and a client for popular databases such as PostgreSQL, MySQL, MariaDB etc. This example uses the sqlite3 client which offers a parallelize method to further batch queries together. Another non-caching batch-loader utilizes this method to provide a similar API. batch-loaders can access other batch-loaders. Using non-Feathers services While not a key-value store, SQL offers a natural batch mechanism with SELECT \* WHERE IN statements. While batch-loader is best suited for key-value stores, it is still suited for SQL when queries remain simple. This example requests the entire row at a given id, however your usage may differ. batch-loader common patterns batch-loader provides a simplified and consistent API over various data sources, when its used as part of your application’s data fetching layer. Custom Feathers services can use batch-loaders to natively accesses local and remote resources. Project-Id-Version: feathers-plus docs 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-06-26 16:23+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 By default, batch-loader uses the standard Map which simply grows until the batch-loader is released. A custom cache is provided as a convenience if you want to persist caches for longer periods of time. It implements a **least-recently-used** algorithm and allows you to limit the number of records cached. Creating a new batch-loader per Request. Full implementation: In many applications, a server using batch-loader serves requests to many different users with different access permissions. It may be dangerous to use one cache across many users, and it is encouraged to create a new batch-loader per request: Knex.js Loading by alternative keys. Occasionally, some kind of value can be accessed in multiple ways. For example, perhaps a “User” type can be loaded not only by an “id” but also by a “username” value. If the same user is loaded by both keys, then it may be useful to fill both caches when a user is loaded from either source: Persistent caches Redis Redis is a very simple key-value store which provides the batch load method MGET which makes it very well suited for use with batch-loader. RethinkDB SQLite The default cache is appropriate when requests to your application are short-lived. This example demonstrates how to use batch-loader with SQL databases via Knex.js, which is a SQL query builder and a client for popular databases such as PostgreSQL, MySQL, MariaDB etc. This example uses the sqlite3 client which offers a parallelize method to further batch queries together. Another non-caching batch-loader utilizes this method to provide a similar API. batch-loaders can access other batch-loaders. Using non-Feathers services While not a key-value store, SQL offers a natural batch mechanism with SELECT \* WHERE IN statements. While batch-loader is best suited for key-value stores, it is still suited for SQL when queries remain simple. This example requests the entire row at a given id, however your usage may differ. batch-loader common patterns batch-loader provides a simplified and consistent API over various data sources, when its used as part of your application’s data fetching layer. Custom Feathers services can use batch-loaders to natively accesses local and remote resources. 