'use strict'

/*Acontinuación voy a crear el evento de menú de hamburguesa*/

/*MENÚ HAMBUERGUESA*/
document.addEventListener('DOMContentLoaded',()=>{

const menuContainer=document.querySelector('.menuContainer ul');
const menuContainerA=document.querySelectorAll('.menuContainer ul a');
const toggle=document.querySelector('.toggle');

toggle.addEventListener('click',()=>{
	menuContainer.classList.toggle('menuVisible');
})

})//END