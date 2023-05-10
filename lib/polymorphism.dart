void main(){ // Runtime polymorphism
renderComponent(PKTextBox()); // it is checking at runtime
renderComponent(PKButton());
}

renderComponent(PKWidget pkWidget){ // it is a method outside main => passing class and its variable in parameter
  pkWidget.render();
}

abstract class RenderingEngine{
  void render();
}

abstract class PKWidget implements RenderingEngine{  // is ka object tu hum nahi bana rahe tu is ko abstract class bana dein ge
  String? text;

  void enable(){
    print("Enable");
  }

  void disable(){
    print("Disable");
  }

  @override
  void render() {
    // TODO: implement render
  }

}

class PKTextBox extends PKWidget{
  @override
  void render() {
    // TODO: implement render
    print("Rendering TextBox");
  }

}

class PKButton extends PKWidget{
  @override
  void render() {
    // TODO: implement render
    print("Rendering Button");
  }

}

