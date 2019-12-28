mongoose-advanced Usage
=====================================

.. code:: sh

   npm install --save @feathers-plus/mongoose-advanced

.. code:: js

   const mongoose = require('mongoose');
   const MongooseModel = require('./models/mymodel')
   const mongooseService = require('@feathers-plus/mongoose-advanced');

   mongoose.Promise = global.Promise;
   mongoose.connect('mongodb://localhost:27017/feathers');

   // Schema == { name: { type: String, required: true } }
   app.use('/todos', mongooseService({
     Model: MongooseModel,
     bulkErrorsKey: 'errors'
   }));

   app.service('todos').hooks({
     after: {
       create: [
         context => {
           // This should output any errors that occur
           // during bulk creation
           console.log(context.params.errors)
         }
       ]
     }
   })

   const data = [
     { name: 'dave' },
     { foo: 'bar' },
     { name: 'bob' },
     { jane: 'doe' }
   ]

   app.service('todos').create(data)
     .then(response => {
       // We should only have two data objects
       // { name: 'dave' } & { name: 'bob' }
       console.log(response.data)
     })
