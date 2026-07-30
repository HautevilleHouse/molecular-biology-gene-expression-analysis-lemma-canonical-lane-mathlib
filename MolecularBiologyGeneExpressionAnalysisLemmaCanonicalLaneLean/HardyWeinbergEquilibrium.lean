import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  locus : Type u
  alleleFrequencies : locus → ℚ
  genotypeFrequencies : locus → ℚ
  randomMatingAssumption : Prop
  hardyWeinbergEquation : Prop
  equilibriumCondition : Prop

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  randomMatingAssumptionClosed : H.randomMatingAssumption
  hardyWeinbergEquationClosed : H.hardyWeinbergEquation
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.randomMatingAssumption ∧ H.hardyWeinbergEquation ∧ H.equilibriumCondition

theorem hardy_weinberg_equilibrium_closed_from_evidence (H : HardyWeinbergEquilibriumPackage)
    (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.randomMatingAssumptionClosed (And.intro E.hardyWeinbergEquationClosed E.equilibriumConditionClosed)

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse