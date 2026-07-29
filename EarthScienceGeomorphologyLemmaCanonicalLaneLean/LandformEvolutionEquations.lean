import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure LandformEvolutionEquations where
  governingPDE : Prop
  boundaryConditions : Prop
  initialConditions : Prop
  wellPosedness : Prop

structure LandformEvolutionEquationsEvidence (L : LandformEvolutionEquations) where
  governingPDEClosed : L.governingPDE
  boundaryConditionsClosed : L.boundaryConditions
  initialConditionsClosed : L.initialConditions
  wellPosednessClosed : L.wellPosedness

def LandformEvolutionEquationsClosed (L : LandformEvolutionEquations) : Prop :=
  L.governingPDE ∧ L.boundaryConditions ∧
  L.initialConditions ∧ L.wellPosedness

theorem landform_evolution_equations_closed_from_evidence
    (L : LandformEvolutionEquations) (Ev : LandformEvolutionEquationsEvidence L) :
    LandformEvolutionEquationsClosed L := by
  exact And.intro Ev.governingPDEClosed
    (And.intro Ev.boundaryConditionsClosed
      (And.intro Ev.initialConditionsClosed Ev.wellPosednessClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse