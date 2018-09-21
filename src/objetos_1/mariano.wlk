import golosinas.*

object mariano {
	var property golosinas = [bombon, caramelo, chocolatin]
	
	method comprar(golosina) { golosinas.add(golosina) }
	
	method desechar(golosina) {  golosinas.remove(golosina) }
		
	method probarGolosinas() {  golosinas.forEach  { golosina => golosina.mordisco() }   }
	
	method hayGolosinaSinTACC() { return golosinas.any { golosina => golosina.libreGluten() } }
	
	method preciosCuidados() { return golosinas.all { golosina => golosina.precio() <= 10 } }
	
	method golosinaDeSabor(unSabor) { return golosinas.find { golosina => golosina.gusto() == unSabor } }
	
	method golosinasDeSabor(unSabor) { return golosinas.filter { golosina => golosina.gusto() == unSabor } }
	
	method sabores() { return golosinas.map { golosina => golosina.gusto() }.asSet() }
	
	method golosinaMasCara() { return golosinas.max { golosina => golosina.precio() } }
	
	method pesoGolosinas() { return golosinas.sum { golosina => golosina.peso() } }
	
	method golosinasFaltantes(golosinasDeseadas) { golosinasDeseadas.removeAll(golosinas)
	return golosinasDeseadas }
	
	method gustosFaltantes(gustosDeseados) { 
		var gustosDeGolosinas = golosinas.map { golosina => golosina.gusto() }
		gustosDeseados.removeAll(gustosDeGolosinas)
		return gustosDeseados
	}
	
	}
		

