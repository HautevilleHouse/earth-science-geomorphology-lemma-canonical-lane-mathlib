import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure LandscapeEvolutionPackage (A : AdmissibleClass) where
  topographicInitialCondition : Prop
  tectonicUpliftRate : Prop
  erosionRateLaw : Prop
  drainageAreaIntegration : Prop
  streamPowerLaw : Prop
  baseLevelChange : Prop
  closureCondition : bridgeClosed A ∧ gateClosed A

def LandscapeEvolutionClosed (A : AdmissibleClass) (L : LandscapeEvolutionPackage A) : Prop :=
  L.topographicInitialCondition ∧ L.tectonicUpliftRate ∧ L.erosionRateLaw ∧
  L.drainageAreaIntegration ∧ L.streamPowerLaw ∧ L.baseLevelChange ∧ L.closureCondition

theorem landscape_evolution_closed (A : AdmissibleClass) (L : LandscapeEvolutionPackage A) :
    LandscapeEvolutionClosed A L := by
  exact And.intro L.topographicInitialCondition
    (And.intro L.tectonicUpliftRate
      (And.intro L.erosionRateLaw
        (And.intro L.drainageAreaIntegration
          (And.intro L.streamPowerLaw
            (And.intro L.baseLevelChange L.closureCondition)))))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse
