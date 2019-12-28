postmark Usage
===================

.. code:: sh

   npm install --save @feathers-plus/batch-loader

.. code:: js

   const BatchLoader = require('@feathers-plus/batch-loader');
   const { getResultsByKey, getUniqueKeys } = BatchLoader;

   const usersLoader = new BatchLoader(async (keys, context) =>
       const usersRecords = await users.find({ query: { id: { $in: getUniqueKeys(keys) } } });
       return getResultsByKey(keys, usersRecords, user => user.id, '')
     ),
     { context: {} }
   );

   const user = await usersLoader.load(key);

.. code:: js

   class BatchLoader( batchLoadFunc [, options] )
