import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure SedimentBudgetPackage where
  sourceProvenance : Prop
  transportCapacity : Prop
  depositionRate : Prop
  massBalance : Prop

structure SedimentBudgetEvidence (S : SedimentBudgetPackage) where
  sourceProvenanceClosed : S.sourceProvenance
  transportCapacityClosed : S.transportCapacity
  depositionRateClosed : S.depositionRate
  massBalanceClosed : S.massBalance

def SedimentBudgetClosed (S : SedimentBudgetPackage) : Prop :=
  S.sourceProvenance ∧ S.transportCapacity ∧ S.depositionRate ∧ S.massBalance

theorem sediment_budget_closed_from_evidence (S : SedimentBudgetPackage) (E : SedimentBudgetEvidence S) :
    SedimentBudgetClosed S := by
  exact And.intro E.sourceProvenanceClosed (And.intro E.transportCapacityClosed (And.intro E.depositionRateClosed E.massBalanceClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse