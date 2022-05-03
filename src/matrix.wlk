import Nave.*


object neo {
	var energia = 100
	method esElegido()= true
	
	method vitalidad()= energia / 10
	
	method saltar(){
		energia /= 2
	}
	
	method energia() = energia
	
	method subirALaNave(){
		nave.subirA_(self)
	}
		method bajarDeLaNave(){
		nave.bajarA_(self)
	}
}

object morfeo {
	var property vitalidad = 8
	var cansado = false
	method esElegido()= false
	method saltar(){
		cansado = not cansado
		vitalidad = 0.max(vitalidad -1)
	}
	method subirALaNave(){
		nave.subirA_(self)
	}
		method bajarDeLaNave(){
		nave.bajarA_(self)
	}
	
}

object trinity {
	var vitalidad = 0
	method esElegido()= false
	method saltar(){}
	method subirALaNave(){
		nave.subirA_(self)
	}
	method bajarDeLaNave(){
		nave.bajarA_(self)
	}
	
	
}