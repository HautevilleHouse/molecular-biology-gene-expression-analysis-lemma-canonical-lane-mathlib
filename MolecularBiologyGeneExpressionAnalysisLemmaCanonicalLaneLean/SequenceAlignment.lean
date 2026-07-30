import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : List String
  alignmentMatrix : List (List ℕ)
  gapPenalty : ℕ
  substitutionScore : ℕ → ℕ → ℤ
  optimalAlignment : Prop

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (h : S.optimalAlignment) : SequenceAlignmentClosed S := h

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse