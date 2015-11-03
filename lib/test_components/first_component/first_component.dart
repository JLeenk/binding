@HtmlImport('first_component.html')
library binding.lib.test_components.first_component.first_component;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

import 'package:binding/test_components/second_component/second_component.dart';

@PolymerRegister('first-component')
class FirstComponent extends PolymerElement {

  @property
  String property11;

  @property
  String property12;

  @property
  String property13;

  ready() {
    set('property11', 'component1 property1');
    set('property13', 'component1 property3 pass to component2 property3');
    print('property11 is $property11');
    print('property12 is $property12');
    print('property13 is $property13');
    print('firstComponent ready');
  }

  attached() {
    print('property11 is $property11');
    print('property12 is $property12');
    print('property13 is $property13');
    print('firstComponent attached');
  }

  FirstComponent.created(): super.created(){
    print('property11 is $property11');
    print('property12 is $property12');
    print('property13 is $property13');
    print('firstComponent created');
  }

}