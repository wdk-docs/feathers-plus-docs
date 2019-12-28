��          t               �      �      �      �   �   �   >   �  �       �  �   �  �   K        �  8     �     �     �  �   �  >   �  �   �    �  �   �	  �   :
        Access the errors: Bulk Creates Errors The create method checks for an array of items and will utilize this built in ``_insertMany`` method of mongoose, this is opposed to using the default ``create`` method which will call a ``.save`` on each array item. The data which failed should be available on the error object. This mongoose adapter has the same interface as the feathers-ecosystem mongooose adapter. The main difference between the two is how bulk creates are handled. This would result in the response from the create method to have the two data objects with the name property and the other two which would have failed on validation errors would be placed on the hook under the following path by default: ``hook.params.errors``. When accessing the errors on the params object they should have an ``error.type`` of either ``ValidionError`` or ``WriteError`` depending on which failed. When doing bulk creates this adapter will add any validation/write errors onto the params object and will not throw an error. This is to allow the errors and successful inserts to be handled within an after hook. mongoose-advanced guide Project-Id-Version: feathers-plus docs 
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
 Access the errors: Bulk Creates Errors The create method checks for an array of items and will utilize this built in ``_insertMany`` method of mongoose, this is opposed to using the default ``create`` method which will call a ``.save`` on each array item. The data which failed should be available on the error object. This mongoose adapter has the same interface as the feathers-ecosystem mongooose adapter. The main difference between the two is how bulk creates are handled. This would result in the response from the create method to have the two data objects with the name property and the other two which would have failed on validation errors would be placed on the hook under the following path by default: ``hook.params.errors``. When accessing the errors on the params object they should have an ``error.type`` of either ``ValidionError`` or ``WriteError`` depending on which failed. When doing bulk creates this adapter will add any validation/write errors onto the params object and will not throw an error. This is to allow the errors and successful inserts to be handled within an after hook. mongoose-advanced guide 