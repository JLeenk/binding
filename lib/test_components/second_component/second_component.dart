@HtmlImport('second_component.html')
library binding.lib.test_components.second_component.second_component;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

@PolymerRegister('second-component')
class SecondComponent extends PolymerElement {

  @property
  String secondComponent;
  @property
  String firstComponent;

  ready(){
    secondComponent = 'component2';
    set('secondComponent', secondComponent);
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

}