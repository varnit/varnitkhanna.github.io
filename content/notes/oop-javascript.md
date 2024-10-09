---
title: "oop javascript"
date: "2008-02-12"
categories: 
  - "javascript"
---

function Car (pMake, pModel, pColor){

this.make = pMake

this.model = pModel

this.color = pColor

}

Car.prototype.showCar = function {

alert(this.make + " " + this.model + " " + this.color);

}
