import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure LandformEvolutionPDEPackage (G : GeomorphicProcessPackage) where
  timeParameter : Type u
  heightField : timeParameter -> Type v
  diffusionEquation : Prop
  transportEquation : Prop
  sourceSinkTerms : Prop
  boundaryConditions : Prop

structure LandformEvolutionPDEEvidence {G : GeomorphicProcessPackage} (F : LandformEvolutionPDEPackage G) where
  diffusionEquationClosed : F.diffusionEquation
  transportEquationClosed : F.transportEquation
  sourceSinkTermsClosed : F.sourceSinkTerms
  boundaryConditionsClosed : F.boundaryConditions

def LandformEvolutionPDEClosed {G : GeomorphicProcessPackage} (F : LandformEvolutionPDEPackage G) : Prop :=
  F.diffusionEquation ∧ F.transportEquation ∧ F.sourceSinkTerms ∧ F.boundaryConditions

theorem landform_evolution_pde_closed_from_evidence {G : GeomorphicProcessPackage} (F : LandformEvolutionPDEPackage G) (E : LandformEvolutionPDEEvidence F) : LandformEvolutionPDEClosed F := by
  exact And.intro E.diffusionEquationClosed (And.intro E.transportEquationClosed (And.intro E.sourceSinkTermsClosed E.boundaryConditionsClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse