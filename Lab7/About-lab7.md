In this Lab we will create Role Assignment

A role assignment is the way that you can grant users or machine identites access to certian services that you provision within azure

for example, inside the keyvault if you want to create or manage the secrets you need to have certain permissions in order to do that.

and because we plan on managing this key vault through Terraform, we need to make sure that the identity that Terraform uses has sufficient access within the key vault that we just provisioned in order to create and manage those resources.




