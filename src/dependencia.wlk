import rodados.*

class Dependencia {
	var property empleados
	const rodados = []
	const pedidos = []
	
	method agregarAFlota(rodado) { rodados.add(rodado)}
	method quitarDeFlota(rodado) { rodados.remove(rodado)}
	method pesoTotalFlota() { return rodados.sum {rodado => rodado.peso()}}
	method estaBienEquipada() { return rodados.size() >= 3 
		and rodados.all({rodado => rodado.velocidadMaxima() >= 100})
	}
	method capacidadTotalEnColor(color) { return rodados.filter ({rodado => rodado.color()
		 == color }).sum ({rodado => rodado.capacidad()})}
    method colorDelRodadoMasRapido() { return rodados.max({rodado => rodado.velocidadMaxima()}).color()}
    method capacidadFaltante() { return rodados.sum ({
    	rodado => rodado.capacidad()}) - empleados }
    method esGrande() { return rodados >=5 and empleados >=40 }
    
    method agregarPedido(pedido) { pedidos.add(pedido)}
    method quitarPedido(pedido) { pedidos.remove(pedido)}
    method totalDePasajeros() { return pedidos.sum ({pedido => pedido.pasajeros()})}
    method cuales() { return pedidos.filter ({pedido => pedido.)
    method unColor(color) { return pedidos.all({ pedido => pedido.colorIncompatible()})}
}

