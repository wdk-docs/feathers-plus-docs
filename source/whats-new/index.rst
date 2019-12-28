whats new
=============

Nov. 2017
---------

batch-loader
~~~~~~~~~~~~

-  Released.

feathers-hooks-common
~~~~~~~~~~~~~~~~~~~~~

.. raw:: html

   <p class="tip">

Use feathers-hooks-common v3.10.0 with FeathersJS v3 (Auk). Use
feathers-hooks-common v4.x.x with FeathersJS v4 (Buzzard).

.. raw:: html

   </p>

-  Docs moved to `Feathers-Plus web
   site. <https://feathers-plus.github.io/v1/feathers-hooks-common/guide.html>`__
-  v4.x.x now supports FeathersJS v3 (Buzzard). Continue using v3.10.0
   for FeathersJS v2 (Auk).

   -  Removed:

      -  Removed support for the deprecated legacy syntax in
         ``populate``.
      -  Removed the deprecated ``remove`` hook.

   -  Deprecated. These will be removed in FeathersJS v3 (Crow).

      -  Deprecated ``pluck`` in favor of
         ``iff(isProvider('external'),`` ``keep(...fieldNames))``. **Be
         careful!**
      -  Deprecated the ``client`` in favor of the ``paramsFromClient``.

   -  Added modules. They work with both FeathersJS v2 and v3.

      -  ``fastJoin`` hook - Very fast alternative to ``populate``.
      -  ``makeCallingParams`` utility - Help construct
         ``context.params`` when calling services.
