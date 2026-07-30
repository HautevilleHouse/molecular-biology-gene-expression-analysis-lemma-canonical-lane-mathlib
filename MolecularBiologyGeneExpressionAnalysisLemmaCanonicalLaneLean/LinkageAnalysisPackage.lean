import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerPositions : List Nat
  recombinationFraction : Float
  lodScore : Float
  significantLinkage : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  lodScoreAboveThreshold : L.lodScore > 3.0
  significantLinkageClosed : L.significantLinkage

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  (L.lodScore > 3.0) ∧ L.significantLinkage

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.lodScoreAboveThreshold E.significantLinkageClosed

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse