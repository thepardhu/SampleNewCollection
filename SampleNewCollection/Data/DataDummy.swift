import Foundation
import UIKit

struct DataDummy {
    
    func getTypeFood() -> [TypeFood] {
        let typeFruit = TypeFood(idType: 1, nameType: "Frutas", imgType: UIImage(imageLiteralResourceName:"frutas.jpg"), descriptionType: "Energia 60 Kcal,Proteina: 0g,Lipidos 0g, Carbohidratos: 15g")
        let typeVegetables = TypeFood(idType: 2, nameType: "Verduras", imgType: UIImage(imageLiteralResourceName:"verduras.jpg"), descriptionType: "Energia 25 Kcal,Proteina: 2g,Lipidos 0g, Carbohidratos: 4g")
        let typeCereal = TypeFood(idType: 3, nameType: "Cereales", imgType : UIImage(imageLiteralResourceName:"cereales.jpg"), descriptionType: "Energia 70 Kcal,Proteina: 2g,Lipidos 0g, Carbohidratos: 15g")
        let typeFatCereal = TypeFood(idType: 4,nameType: "Cereales con grasa", imgType:UIImage(imageLiteralResourceName:"ceralesgrasa.jpg"), descriptionType: "Energia 115 Kcal,Proteina: 2g,Lipidos 5g, Carbohidratos: 15g")
        let typeAnimalOrigin = TypeFood(idType: 5,nameType:"Alimentos de origen animal", imgType: UIImage(imageLiteralResourceName:"aoa.jpg"), descriptionType: "")
        let typeMilk = TypeFood(idType:6,nameType:"Leche Descremada",imgType:UIImage(imageLiteralResourceName:"leche.jpg"), descriptionType: "Energia 95 Kcal,Proteina: 9g,Lipidos 2g, Carbohidratos: 12g")
        let typeLegume = TypeFood(idType:7,nameType:"Leguminosas",imgType:UIImage(imageLiteralResourceName:"leguminosas.jpg"), descriptionType: "Energia 120 Kcal,Proteina: 8g,Lipidos 1g, Carbohidratos: 20g")
        let typeFat = TypeFood(idType:8,nameType:"Grasas",imgType:UIImage(imageLiteralResourceName:"grasas.jpg"), descriptionType: "Energia 45 Kcal,Proteina: 0g,Lipidos 5g, Carbohidratos: 0g")
        let typeProteinFat = TypeFood(idType : 9, nameType : "Grasas con proteìna", imgType:UIImage(imageLiteralResourceName:"grasasproteina.jpg"), descriptionType: "Energia 70 Kcal,Proteina: 3g,Lipidos 5g, Carbohidratos: 3g")
        let typeSugar = TypeFood(idType:10,nameType:"Azùcares",imgType:UIImage(imageLiteralResourceName:"azucares.jpg"), descriptionType: "Energia 40 Kcal,Proteina: 0g,Lipidos 0g, Carbohidratos: 10g")
        let typeFatSugar = TypeFood(idType:11,nameType:"Azùcares con grasa",imgType:UIImage(imageLiteralResourceName:"azucaresgrasa.jpg"), descriptionType: "Energia 85 Kcal,Proteina: 0g,Lipidos 5g, Carbohidratos: 10g")
        let typeFree = TypeFood(idType:12,nameType:"Alimentos libres",imgType:UIImage(imageLiteralResourceName:"libres.jpg"), descriptionType: "Energia 40 Kcal,Proteina: 0g,Lipidos 0g, Carbohidratos: 10g")
        let typeList : [TypeFood] = [typeFruit,typeVegetables,typeCereal,typeFatCereal,typeAnimalOrigin,typeMilk,typeLegume,typeFat,typeProteinFat,typeSugar,typeFatSugar,typeFree]
        return typeList
    }
}
