import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure SedimentBudgetPackage (A : AdmissibleClass) where
  sourceTermSupply : Prop
  transportPathways : Prop
  depositionalSinks : Prop
  massBalanceConstraint : Prop
  closureCondition : bridgeClosed A ∧ gateClosed A

def SedimentBudgetClosed (A : AdmissibleClass) (S : SedimentBudgetPackage A) : Prop :=
  S.sourceTermSupply ∧ S.transportPathways ∧ S.depositionalSinks ∧ S.massBalanceConstraint ∧ S.closureCondition

theorem sediment_budget_closed (A : AdmissibleClass) (S : SedimentBudgetPackage A) :
    SedimentBudgetClosed A S := by
  exact And.intro S.sourceTermSupply
    (And.intro S.transportPathways
      (And.intro S.depositionalSinks
        (And.intro S.massBalanceConstraint S.closureCondition)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse
