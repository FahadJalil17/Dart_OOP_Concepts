void main(){
var textBox = PKTextBox();
textBox.enable();
}

class PKWidget{
  String? text;

  void enable(){
    print("Enable");
  }

  void disable(){
    print("Disable");
  }

}

class PKTextBox extends PKWidget{
void render(){
  print("Rendering TextBox");
}
}

class PKButton extends PKWidget{
void render(){
  print("Rendering Button");
}
}