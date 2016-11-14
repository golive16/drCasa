class Infecciosas {
	var celulasAmenazadas
	constructor (_celulasAmenazadas) {
		celulasAmenazadas = _celulasAmenazadas
	}
	method efecto(persona){
		persona.aumentarTemperatura(celulasAmenazadas / 1000)
	}
	method atenuar(celulas){
		celulasAmenazadas -= celulas
		return self
	}
	method agravar(celulas){
		celulasAmenazadas += celulas
		return self
	}
	method reproducir(){
		celulasAmenazadas *= 2
		return self
	}
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
}
class AutoInmunes {
	var celulasAmenazadas
	constructor (_celulasAmenazadas) {
		celulasAmenazadas = _celulasAmenazadas
	}

	method efecto(persona){
		persona.destruir(celulasAmenazadas)
	}
	method atenuar(celulas){
		celulasAmenazadas -= celulas
		return self
	}
	method agravar(celulas){
		celulasAmenazadas += celulas
		return self
	}
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
}
class Muerte {
	method muerte(){
		//no hace nada
	}
	method efecto(persona){
		persona.morir()
	}
}