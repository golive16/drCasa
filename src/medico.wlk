import persona.*

class Medico inherits Persona {
	var dosis
 	constructor(_temperatura,_celulasSaludables, _dosis) = super (_temperatura,_celulasSaludables){
 		dosis = _dosis
 	}
	method atender(persona) {
		persona.recibirMedicina(dosis)
		return persona
	}
}

class JefeDeDepto inherits Persona {
	var empleados
	var dosis
	constructor(_temperatura,_celulasSaludables,_dosis, _empleados) = super(_temperatura,_celulasSaludables){
		empleados = _empleados
		dosis = _dosis
	}
	method atender(persona){
		empleados.anyOne().atender(persona)
		return persona
	}
	method contratar(persona){
		empleados.add(persona)
		return self
	}
}