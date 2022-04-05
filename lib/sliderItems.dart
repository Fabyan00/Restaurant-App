import 'package:flutter/material.dart';

class sliderItems{
  final String imageUrl;
  final String title;
  final String txt;

  sliderItems({
    this.imageUrl = '',
    this.title = '', 
    this.txt = ''
  });
}

final sliderList = [
  sliderItems(
    imageUrl: 'images/3574257.jpg',
    title: 'Conócenos', 
    txt: 'Nuestro restaurante abrió sus puertas en 2018, convirtiendose rápidamente en el líder por sus filetes de primera calidad, su coctelería única, su excelente servicio y su concepto sin precendentes. A día de hoy, permanece como el restaurante número 1 de México.'
  ),
  sliderItems(
    imageUrl: 'images/restaurant-interior.jpg',
    title: 'Espacios elegantes', 
    txt: 'Aquí priorizamos la comodidad de nuestros clientes, contamos con un ambiente cálido y servicio de primera que te harán gozar de una experiencia única en compañia de tus seres quieridos.'
  ),
  sliderItems(
    imageUrl: 'images/life-style.jpg',
    title: 'Oferta gastronómica', 
    txt: 'Dejate seducir con nuestros exquisitos platillos, preparados por los mejores chefs de la zona. Toda nuestra comida está hecha para reflejar la gran cultura gastronómica que tenemos y te la llevamos hasta tu mesa para que la disfrutes. No te arrepentiras.'
  ),
];
