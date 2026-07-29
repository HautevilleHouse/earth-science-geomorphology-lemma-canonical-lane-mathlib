import EarthScienceGeomorphologyLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure GlacialProcessPackage where
  iceDynamics : Type
  erosionRate : Prop
  moraineFormation : Prop
  fiordCutting : Prop
  isostaticRebound : Prop

structure GlacialProcessEvidence (G : GlacialProcessPackage) where
  erosionRateClosed : G.erosionRate
  moraineFormationClosed : G.moraineFormation
  fiordCuttingClosed : G.fiordCutting
  isostaticReboundClosed : G.isostaticRebound

def GlacialProcessClosed (G : GlacialProcessPackage) : Prop :=
  G.erosionRate ∧ G.moraineFormation ∧ G.fiordCutting ∧ G.isostaticRebound

theorem glacial_process_closed_from_evidence (G : GlacialProcessPackage)
    (E : GlacialProcessEvidence G) : GlacialProcessClosed G := by
  exact And.intro E.erosionRateClosed
    (And.intro E.moraineFormationClosed
      (And.intro E.fiordCuttingClosed E.isostaticReboundClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse