@HtmlImport('first_component.html')
library binding.lib.test_components.first_component.first_component;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

@PolymerRegister('first-component')
class FirstComponent extends PolymerElement {

  @property
  String _component;

  ready() {
    component = 'component1';
    print('component is $component');
    print('firstComponent ready');
  }

  attached() {
    print('component is $component');
    print('firstComponent attached');
  }

  FirstComponent.created(): super.created(){
    print('component is $component');
    print('firstComponent created');
  }

  void set component(String component) {
    _component = component;
  }

  String get component {
    return _component;
  }
}