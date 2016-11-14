import enfermedad.*
	
class Persona {
	var temperatura
	var enfermedades = []
	var celulasSaludables
	constructor(_temperatura, _celulasSaludables){
		temperatura = _temperatura
		celulasSaludables = _celulasSaludables
	}
	
	method contraer(enfermedad) {
		enfermedades.add(enfermedad)
		return self
	}
	method vivirUnDia(){
		enfermedades.forEach({enfermedad => enfermedad.efecto(self)})
		return self
	}
	method aumentarTemperatura(grados){
		temperatura += grados
	}
	method destruir(celulasAmenazadas){
		celulasSaludables -= celulasAmenazadas
	}
	method temperatura(){
		return temperatura
	}
	method celulasSaludables(){
		return celulasSaludables
	}
	method enfermedades(){
		return enfermedades
	}
	method recibirMedicina(cantidad){
		enfermedades.forEach({enfermedad => enfermedad.atenuar(cantidad)})
		return self
	}
	method morir(){
		temperatura = 0
	}
}