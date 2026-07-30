import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure DifferentialExpressionPackage where
  contrastGroups : Type u
  logFoldChanges : contrastGroups → ℝ
  pValues : contrastGroups → ℝ
  multipleTestingCorrected : Prop
  significantGenesIdentified : Prop
  multipleTestingCorrectedClosed : multipleTestingCorrected
  significantGenesIdentifiedClosed : significantGenesIdentified

structure DifferentialExpressionEvidence (D : DifferentialExpressionPackage) where
  multipleTestingCorrectedClosed : D.multipleTestingCorrected
  significantGenesIdentifiedClosed : D.significantGenesIdentified

def DifferentialExpressionClosed (D : DifferentialExpressionPackage) : Prop :=
  D.multipleTestingCorrected ∧ D.significantGenesIdentified

theorem differential_expression_closed_from_evidence
    (D : DifferentialExpressionPackage) (E : DifferentialExpressionEvidence D) :
    DifferentialExpressionClosed D := by
  exact And.intro E.multipleTestingCorrectedClosed E.significantGenesIdentifiedClosed

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse