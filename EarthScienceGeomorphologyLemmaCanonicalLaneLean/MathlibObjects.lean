import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure GeomorphologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeomorphologyAdmittedObject where
  space : GeomorphologySpace
  landformType : Prop
  processBoundary : Prop
  erosionModel : Type
  erosionTopology : TopologicalSpace erosionModel
  consistentWithProcess : Prop
  conclusion : consistentWithProcess

def GeomorphologyWitnessClosed (O : GeomorphologyAdmittedObject) : Prop :=
  O.consistentWithProcess

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse