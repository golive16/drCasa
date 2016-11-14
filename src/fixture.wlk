import enfermedad.*
import persona.*
import medico.*

object fixture{
	method logan(){
		return new Persona(37, 1000000, 0, [])
	}
	method malaria(){
		return new Infecciosas(5000)
	}
	method lupus(){
		return new AutoInmunes(10000)
	}
	method cameron(){
		return new Medico(35, 1000000, 300, [])
	}
	method foreman(){
		return new Medico(36, 1000000, 400, [])
	}
	method house(){
		return new JefeDeDepto(35, 1000000, 0, [])
	}
	method muerte(){
		return new Muerte()
	}
}