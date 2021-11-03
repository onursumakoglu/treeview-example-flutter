# treeview-example-flutter
The application fetch data from the api and creates a treeview on the main page.

By returning all the data from an endpoint provided by the Restful Get service, it creates a widget in Flutter and puts 
a TreeView on the home page. This TreeViw is populated by making a GET call to the endpoint served by the Restful Get service.

The data consists of a table with the following fields and values.
- Id, ParentId, DisplayText
###### 1, 0, 'Root'
###### 2, 1, 'Birinci Seviye node 1'
###### 3, 1, 'Birinci Seviye node 2'
###### 4, 2, 'İkinci Seviye node 1' 
###### 5, 2, 'İkinci Seviye node 2'
###### 6, 3, 'İkinci Seviye node 3'
###### 7, 4, 'Üçüncü Seviye node 1'
###### 8, 7, 'Dördüncü seviye node 1'

![kkk drawio](https://user-images.githubusercontent.com/64734844/140046974-ba75027c-d9fa-4d5f-a1f6-b39d55f097a5.png)

![Screenshot_1635878647](https://user-images.githubusercontent.com/64734844/140047997-318f1a77-25cc-41b2-97b3-9943bcec3ab3.png)
