@HtmlImport('second_component.html')
library binding.lib.test_components.second_component.second_component;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

@PolymerRegister('second-component')
class SecondComponent extends PolymerElement {

  @property
  String _secondComponent;
  @property
  String _firstComponent;

  ready(){
    secondComponent = 'component2';
    print('secondComponent is $secondComponent');
    print('firstComponent is $firstComponent');
    print('secondComponent ready');
  }

  attached(){
    print('secondComponent is $secondComponent');
    print('firstComponent is $firstComponent');
    print('secondComponent attached');
  }

  SecondComponent.created(): super.created(){
    print('secondComponent is $secondComponent');
    print('firstComponent is $firstComponent');
    print('secondComponent created');
  }

  void set secondComponent(String secondComponent){
    _secondComponent = secondComponent;
  }

  String get secondComponent{
    return _secondComponent;
  }

  void set firstComponent(String firstComponent){
    _firstComponent = firstComponent;
  }

  String get firstComponent{
    return _firstComponent;
  }
}