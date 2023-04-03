# Varbase Scripts

## Add Varbase Testing Users

To add testing users for each default user role in Varbase.

```
cd PROJECT_DIR_NAME/docroot/profiles/contrib/varbase/scripts
bash add-testing-users.sh
```

The out put for this bash command:
```
 ---------------------------------------------------------------- 
      User name: Normal user
      User mail: test.authenticated@vardot.com
  User password: dD.123123ddd
      User role: _none_
 ================================================================= 
 [success] Created a new user with uid 8
   No user role for this user
 ---------------------------------------------------------------- 
      User name: Editor
      User mail: test.editor@vardot.com
  User password: dD.123123ddd
      User role: editor
 ================================================================= 
 [success] Created a new user with uid 9
 [success] Added editor role to Editor
 ---------------------------------------------------------------- 
      User name: Content admin
      User mail: test.content_admin@vardot.com
  User password: dD.123123ddd
      User role: content_admin
 ================================================================= 
 [success] Created a new user with uid 10
 [success] Added content_admin role to Content admin
 ---------------------------------------------------------------- 
      User name: SEO admin
      User mail: test.seo_admin@vardot.com
  User password: dD.123123ddd
      User role: seo_admin
 ================================================================= 
 [success] Created a new user with uid 11
 [success] Added seo_admin role to SEO admin
 ---------------------------------------------------------------- 
      User name: Site admin
      User mail: test.site_admin@vardot.com
  User password: dD.123123ddd
      User role: site_admin
 ================================================================= 
 [success] Created a new user with uid 12
 [success] Added site_admin role to Site admin
 ---------------------------------------------------------------- 
      User name: Super admin
      User mail: test.super_admin@vardot.com
  User password: dD.123123ddd
      User role: administrator
 ================================================================= 
 [success] Created a new user with uid 13
 [success] Added administrator role to Super admin
```

## Delete Varbase Testing Users
To delete all generated testing users, with all content created by them.
```
cd PROJECT_DIR_NAME/docroot/profiles/contrib/varbase/scripts
bash delete-testing-users.sh
```

The out put for this bash command:
```
 ---------------------------------------------------------------- 
      User name: Normal user
      User mail: test.authenticated@vardot.com
  User password: dD.123123ddd
      User role: _none_
 ================================================================= 
 [warning] All content created by Normal user will be deleted.

 // Cancel user account?: : yes.                                                                                        

>  [notice] Deleted user: Normal user <test.authenticated@vardot.com>.
>  [notice] Message: Account /Normal user/ has been deleted.
> 
 ---------------------------------------------------------------- 
      User name: Editor
      User mail: test.editor@vardot.com
  User password: dD.123123ddd
      User role: editor
 ================================================================= 
 [warning] All content created by Editor will be deleted.

 // Cancel user account?: : yes.                                                                                        

>  [notice] Deleted user: Editor <test.editor@vardot.com>.
>  [notice] Message: Account /Editor/ has been deleted.
> 
 ---------------------------------------------------------------- 
      User name: Content admin
      User mail: test.content_admin@vardot.com
  User password: dD.123123ddd
      User role: content_admin
 ================================================================= 
 [warning] All content created by Content admin will be deleted.

 // Cancel user account?: : yes.                                                                                        

>  [notice] Deleted user: Content admin <test.content_admin@vardot.com>.
>  [notice] Message: Account /Content admin/ has been deleted.
> 
 ---------------------------------------------------------------- 
      User name: SEO admin
      User mail: test.seo_admin@vardot.com
  User password: dD.123123ddd
      User role: seo_admin
 ================================================================= 
 [warning] All content created by SEO admin will be deleted.

 // Cancel user account?: : yes.                                                                                        

>  [notice] Deleted user: SEO admin <test.seo_admin@vardot.com>.
>  [notice] Message: Account /SEO admin/ has been deleted.
> 
 ---------------------------------------------------------------- 
      User name: Site admin
      User mail: test.site_admin@vardot.com
  User password: dD.123123ddd
      User role: site_admin
 ================================================================= 
 [warning] All content created by Site admin will be deleted.

 // Cancel user account?: : yes.                                                                                        

>  [notice] Deleted user: Site admin <test.site_admin@vardot.com>.
>  [notice] Message: Account /Site admin/ has been deleted.
> 
 ---------------------------------------------------------------- 
      User name: Super admin
      User mail: test.super_admin@vardot.com
  User password: dD.123123ddd
      User role: administrator
 ================================================================= 
 [warning] All content created by Super admin will be deleted.

 // Cancel user account?: : yes.                                                                                        

>  [notice] Deleted user: Super admin <test.super_admin@vardot.com>.
>  [notice] Message: Account /Super admin/ has been deleted.

```
## Change the list of users and their passwords
* Edit the `varbase.users.yml` file.
* Add more users or change the password for the listed users
* The `add-testing-users.sh` and `delete-testing-users.sh` bash command will
read all changes and apply them.from the `varbase.users.yml`. 