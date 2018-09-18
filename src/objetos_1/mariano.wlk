import golosinas.*

object mariano {
	var property golosinas = [bombon, caramelo, alfajor, chupetin]
	
	method comprar(golosina) { golosinas.add(golosina) }
	
	method desechar(golosina) {  golosinas.remove(golosina) }
		
	method probarGolosinas() {  golosinas.forEach  { golosina => golosina.mordisco() }   }
	
	method hayGolosinaSinTACC() { return golosinas.any { golosina => golosina.libreGluten() } }
	
	method preciosCuidados() { return golosinas.all { golosina => golosina.precio() <= 10 } }
	
	method golosinaDeSabor(unSabor) { return golosinas.find { golosina => golosina.gusto() == unSabor } }
	
	method golosinasDeSabor(unSabor) { return golosinas.filter { golosina => golosina.gusto() == unSabor } }
	
	method sabores() { return golosinas.map { golosina => golosina.gusto() }.asSet() }
	
}

