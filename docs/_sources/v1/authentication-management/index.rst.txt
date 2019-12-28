authentication-management Usage
========================================

Initializing the module server side:

.. code:: js

   npm install @feathers-plus/authentication-management

   // JS
   const auth = require('@feathers/authentication');
   const authManagement = require('@feathers-plus/authentication-management');

   // authentication and user service should be initialized before
   // initializing authManagement
   app.configure(authManagement());

   // allow only signed in users to use passwordChange and identityChange
   const isAction = (...args) => hook => args.includes(hook.data.action);

   // TODO: Security for passwordChange and identityChange (and more?)

   app.service('authManagement').before({
     create: [
       hooks.iff(isAction('passwordChange', 'identityChange'), auth.hooks.authenticate('jwt')),
     ],
   });

This will add the service ``authManagement`` to your app. To use the
service client side, we provide a module which lets you access methods
on the service directly.

Initialize the module client side:

.. code:: js

   import AuthManagement from '@feathers-plus/authentication-management/lib/client'

   const authManagement = new AuthManagement(app);

Now you can call methods like so:

.. code:: js

   authManagement.checkUnique('user@mail.com')
     .then(res => {
       // user is unique
     }).catch(err => {
       // user is not unique
     })

.. raw:: html

   <!--- server side module authManagement ------------------------------------------------------------------------ -->

.. raw:: html

   <h2 id="server-side-module">

server side module authManagement ( [options] )

.. raw:: html

   </h2>

-  **Arguments:**

   -  ``{Object} options``

-  **Usage:**

   Adds authManagement service when initialized with
   ``app.configure(authManagement(options))``.

   .. code:: js

      const authManagement = require('@feathers-plus/authentication-management');

      app.configure(authManagement(options));

-  **Details:**

   -  ``options`` An optional object of options:

+-----------------+-----------------+-----------------+-----------------+
| Property        | Type            | Default         | Description     |
+=================+=================+=================+=================+
| service         | String          | ‘/users’        | Path to user    |
|                 |                 |                 | service.        |
+-----------------+-----------------+-----------------+-----------------+
| path            | String          | ‘authManagement | Path for auth   |
|                 |                 | ’               | management      |
|                 |                 |                 | service, see    |
|                 |                 |                 | multiple        |
|                 |                 |                 | services below. |
+-----------------+-----------------+-----------------+-----------------+
| notifier        | Function        | ``() => Promise | Function which  |
|                 |                 | .resolve()``    | sends           |
|                 |                 |                 | notifications   |
|                 |                 |                 | to user through |
|                 |                 |                 | email, SMS,     |
|                 |                 |                 | etc. Call       |
|                 |                 |                 | signature is    |
|                 |                 |                 | ``(type, user,  |
|                 |                 |                 | notifierOptions |
|                 |                 |                 | ) => Promise``. |
+-----------------+-----------------+-----------------+-----------------+
| longTokenLen    | Integer         | 15              | URL-token’s     |
|                 |                 |                 | length will be  |
|                 |                 |                 | twice this.     |
+-----------------+-----------------+-----------------+-----------------+
| shortTokenLen   | Integer         | 6               | Length of SMS   |
|                 |                 |                 | tokens.         |
+-----------------+-----------------+-----------------+-----------------+
| shortTokenDigit | Boolean         | true            | If SMS token    |
| s               |                 |                 | should be       |
|                 |                 |                 | digits only.    |
+-----------------+-----------------+-----------------+-----------------+
| resetDelay      | Integer         | 1000 \* 60 \*   | Expiration for  |
|                 |                 | 60 \* 2         | sign up email   |
|                 |                 |                 | verification    |
|                 |                 |                 | token in ms.    |
+-----------------+-----------------+-----------------+-----------------+
| delay           | Integer         | 1000 \* 60 \*   | Expiration for  |
|                 |                 | 60 \* 24 \* 5   | password reset  |
|                 |                 |                 | token in ms.    |
+-----------------+-----------------+-----------------+-----------------+
| skipIsVerifiedC | Boolean         | false           | Allow           |
| heck            |                 |                 | sendResetPwd    |
|                 |                 |                 | and resetPwd    |
|                 |                 |                 | for unverified  |
|                 |                 |                 | users.          |
+-----------------+-----------------+-----------------+-----------------+
| identifyUserPro | Array           | [‘email’]       | Property in     |
| ps              |                 |                 | user-item which |
|                 |                 |                 | uniquely        |
|                 |                 |                 | identifies the  |
|                 |                 |                 | user, at least  |
|                 |                 |                 | one of these    |
|                 |                 |                 | props must be   |
|                 |                 |                 | provided        |
|                 |                 |                 | whenever a      |
|                 |                 |                 | short token is  |
|                 |                 |                 | used.           |
+-----------------+-----------------+-----------------+-----------------+
| sanitizeUserFor | Function        | sanitizeUserFor | TODO            |
| Client          |                 | Client          |                 |
+-----------------+-----------------+-----------------+-----------------+
