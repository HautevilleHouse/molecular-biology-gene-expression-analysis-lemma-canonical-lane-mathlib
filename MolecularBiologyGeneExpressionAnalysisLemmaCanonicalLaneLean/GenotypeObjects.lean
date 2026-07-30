import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure HardyWeinbergPopulation where
  alleleA : Type
  allelea : Type
  populationSize : Nat
  observedGenotypes : (Nat × Nat × Nat)  -- (AA, Aa, aa)

structure GeneExpressionSample where
  sampleId : String
  expressionLevels : List Float
  condition : String

structure AdmittedGenotypeObject where
  population : HardyWeinbergPopulation
  equilibrium : Prop
  chiSquaredFit : Float
  equilibriumConclusion : equilibrium

def GeneWitnessClosed (O : AdmittedGenotypeObject) : Prop :=
  O.equilibrium

end HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean