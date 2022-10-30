/*
  - Each program has a Main Method
  - . (dot) helps us access methods within an instatiated class

*/
main(){
  var header = HeaderWidget();
  header.renderHeader();


}


class HeaderWidget{
  var height = 100;
  var boolAnswer = True;
  var titleString = 'Hello There';
  
  renderHeader(){
    print('This is a header');
  }//This is a function
}

