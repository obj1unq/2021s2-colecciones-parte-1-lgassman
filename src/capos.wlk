object rolando {
	
	const artefactos = #{}
	var capacidad = 2
	const hogar = castillo
	const property historia = []
	
	method encontrar(artefacto) {
		if (artefactos.size() < capacidad) {		
			artefactos.add(artefacto)
		}
		historia.add(artefacto)
	}
	
	method tiene(artefacto) {
		return artefactos.contains(artefacto)
	}
	
	method capacidad(_capacidad) {
		capacidad = _capacidad
	}
	
	method artefactos() {
		return artefactos
	}
	
	method irAHogar() {
		hogar.guardar(artefactos)
		artefactos.clear()
	}
	
	method posesiones() {		
		return artefactos + hogar.artefactos()
	}
	
	method posee(artefacto) {
		return self.tiene(artefacto) or hogar.guardado(artefacto)
	}
	
	
}

object castillo {
	
	var property artefactos = #{}
	
	method guardar(_artefactos) {	
		artefactos.addAll( _artefactos)			
	}
	method guardado(artefacto) {
		return artefactos.contains(artefacto)
	}
	
}

object libro {
	
}

object collar {
	
	
}

object armadura {
	
}

object espada {
	
}