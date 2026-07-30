import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure DifferentialExpressionAnalysisPackage where
  geneId : String
  logFoldChange : Float
  pValue : Float
  adjustedPValue : Float
  significantDE : Prop

structure DifferentialExpressionAnalysisEvidence (D : DifferentialExpressionAnalysisPackage) where
  adjustedPValueBelowThreshold : D.adjustedPValue < 0.05
  absoluteLogFoldChangeSufficient : |D.logFoldChange| > 1.0
  significantDEClosed : D.significantDE

def DifferentialExpressionAnalysisClosed (D : DifferentialExpressionAnalysisPackage) : Prop :=
  (D.adjustedPValue < 0.05) ∧ (|D.logFoldChange| > 1.0) ∧ D.significantDE

theorem differential_expression_analysis_closed_from_evidence (D : DifferentialExpressionAnalysisPackage) (E : DifferentialExpressionAnalysisEvidence D) :
    DifferentialExpressionAnalysisClosed D := by
  exact And.intro E.adjustedPValueBelowThreshold (And.intro E.absoluteLogFoldChangeSufficient E.significantDEClosed)

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse