import matrix.*

object nave {

	var nave= #{}
	
	method cantPasajeros(){
		return nave.size()
	}
	
	method estaElElegido(){
		return nave.any({pasajero => pasajero.esElegido()})
	}
	
	method subirA_(pasajero){
		nave.add(pasajero)
	}
	
	method bajarA_(pasajero){
		nave.remove(pasajero)
	}
		
	method chocar() {
		nave.forEach( {p => p.saltar() })
		nave.clear()
	}
	
	method acelerar(){
		nave.filter( { p => not p.esElegido() } )
		.forEach( {p => p.saltar() } )
	}
	
	method mayorVitalidad()= nave.max( {p => p.vitalidad()} )
	method menorVitalidad()= nave.min( {p => p.vitalidad()} )
	
	
	method estaEquilibrada(){
		self.mayorVitalidad().vitalidad() < self.menorVitalidad().vitalidad() * 2
	}
}

