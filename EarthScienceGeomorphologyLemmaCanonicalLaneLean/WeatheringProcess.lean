import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure WeatheringProcessPackage where
  chemicalWeathering : Prop
  physicalWeathering : Prop
  biologicalWeathering : Prop
  regolithProduction : Prop

structure WeatheringProcessEvidence (W : WeatheringProcessPackage) where
  chemicalWeatheringClosed : W.chemicalWeathering
  physicalWeatheringClosed : W.physicalWeathering
  biologicalWeatheringClosed : W.biologicalWeathering
  regolithProductionClosed : W.regolithProduction

def WeatheringProcessClosed (W : WeatheringProcessPackage) : Prop :=
  W.chemicalWeathering ∧ W.physicalWeathering ∧ W.biologicalWeathering ∧ W.regolithProduction

theorem weathering_process_closed_from_evidence (W : WeatheringProcessPackage) (E : WeatheringProcessEvidence W) :
    WeatheringProcessClosed W := by
  exact And.intro E.chemicalWeatheringClosed (And.intro E.physicalWeatheringClosed (And.intro E.biologicalWeatheringClosed E.regolithProductionClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse