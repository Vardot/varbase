# Varbase Gherkin features
# List of features in step 1
# Initialization of tests

* [Feature: Create default testing users.](/tests/features/varbase/step1-init-tests/01-create-default-testing-users.feature)  
```
test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
test_seo_admin: { email: 'seo.admin.test@vardot.com', password: 'dD.123123ddd' }
test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }
```

* [Feature: Add Arabic language if we do not have it to languages in the system.](/tests/features/varbase/step1-init-tests/02-add-arabic.feature)
