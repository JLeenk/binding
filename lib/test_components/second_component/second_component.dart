@HtmlImport('second_component.html')
library binding.lib.test_components.second_component.second_component;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

@PolymerRegister('second-component')
class SecondComponent extends PolymerElement {

  @property
  String firstProperty;

  @Property(notify: true)
  String secondProperty;

  @Property(reflectToAttribute: true)
  String thirdProperty;

  ready() {
    firstProperty = 'component2 property1';
    set('firstProperty', firstProperty);
    secondProperty = 'component2 property2 pass to component1 property2';
    set('secondProperty', secondProperty);
    print('firstProperty is $firstProperty');
    print('secondProperty is $secondProperty');
    print('thirdProperty is $thirdProperty');
    print('secondComponent ready');
  }

  attached() {
    print('firstProperty is $firstProperty');
    print('secondProperty is $secondProperty');
    print('thirdProperty is $thirdProperty');
    print('secondComponent attached');
  }

  SecondComponent.created(): super.created(){
    print('firstProperty is $firstProperty');
    print('secondProperty is $secondProperty');
    print('thirdProperty is $thirdProperty');
    print('secondComponent created');
  }

}