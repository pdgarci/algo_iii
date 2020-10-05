!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase-consigna_a_entregar'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase-consigna_a_entregar'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase-consigna_a_entregar'!
GuardiaDeSkyrim class
	instanceVariableNames: 'lista_saludo cantidadDeVecesQueHablaronConmigo lista_saludos'!

!GuardiaDeSkyrim class methodsFor: 'nil' stamp: 'PDG 10/1/2020 21:40:29'!
conversar

	self recordarQueConversaronConmigo.
	^self contestar! !


!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'PDG 10/5/2020 13:18:43'!
contestar

	^lista_saludos at: (cantidadDeVecesQueHablaronConmigo min: lista_saludos size).! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'PDG 10/5/2020 13:13:12'!
init

	cantidadDeVecesQueHablaronConmigo := 0.
	lista_saludos := #('Hola forastero' 'Extraño lugar para visitar has elegido' 'Casi nadie vive aquí' 'La mayoría se han ido' 'Huyeron luego de la guerra' '¿Qué te trae por aquí?') asOrderedCollection.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'PDG 10/5/2020 13:26:06'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	lista_saludo := nil.
	cantidadDeVecesQueHablaronConmigo := 8.
	lista_saludos := ((OrderedCollection new) add: 'Hola forastero'; add: 'Extraño lugar para visitar has elegido'; add: 'Casi nadie vive aquí'; add: 'La mayoría se han ido'; add: 'Huyeron luego de la guerra'; add: '¿Qué te trae por aquí?'; yourself).! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'PDG 10/1/2020 21:52:52'!
recordarQueConversaronConmigo
	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.! !

GuardiaDeSkyrim initializeAfterFileIn!