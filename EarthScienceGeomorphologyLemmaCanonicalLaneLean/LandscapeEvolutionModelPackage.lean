import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeomorphologyLemmaCanonicalLaneLean.TopographyPackage
import EarthScienceGeomorphologyLemmaCanonicalLaneLean.EarthSurfaceProcessPackage
import EarthScienceGeomorphologyLemmaCanonicalLaneLean.HillslopeDiffusionPackage
import EarthScienceGeomorphologyLemmaCanonicalLaneLean.StreamPowerIncisionPackage

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure LandscapeEvolutionModelPackage {T : TopographyPackage}
    (E : EarthSurfaceProcessPackage T) (H : HillslopeDiffusionPackage T) (S : StreamPowerIncisionPackage T) where
  couplingScheme : Prop
  numericalStability : Prop
  boundaryConditions : Prop
  initialConditions : Prop
  calibrationData : Prop

structure LandscapeEvolutionModelEvidence {T : TopographyPackage}
    {E : EarthSurfaceProcessPackage T} {H : HillslopeDiffusionPackage T} {S : StreamPowerIncisionPackage T}
    (L : LandscapeEvolutionModelPackage E H S) where
  couplingSchemeClosed : L.couplingScheme
  numericalStabilityClosed : L.numericalStability
  boundaryConditionsClosed : L.boundaryConditions
  initialConditionsClosed : L.initialConditions
  calibrationDataClosed : L.calibrationData

def LandscapeEvolutionModelClosed {T : TopographyPackage}
    {E : EarthSurfaceProcessPackage T} {H : HillslopeDiffusionPackage T} {S : StreamPowerIncisionPackage T}
    (L : LandscapeEvolutionModelPackage E H S) : Prop :=
  L.couplingScheme ∧ L.numericalStability ∧ L.boundaryConditions ∧ L.initialConditions ∧ L.calibrationData

theorem landscape_evolution_model_closed_from_evidence {T : TopographyPackage}
    {E : EarthSurfaceProcessPackage T} {H : HillslopeDiffusionPackage T} {S : StreamPowerIncisionPackage T}
    (L : LandscapeEvolutionModelPackage E H S) (Ev : LandscapeEvolutionModelEvidence L) :
    LandscapeEvolutionModelClosed L := by
  exact And.intro Ev.couplingSchemeClosed
    (And.intro Ev.numericalStabilityClosed
      (And.intro Ev.boundaryConditionsClosed
        (And.intro Ev.initialConditionsClosed Ev.calibrationDataClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse