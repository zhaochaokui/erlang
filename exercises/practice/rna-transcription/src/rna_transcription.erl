-module(rna_transcription).

-export([to_rna/1]).


%%to_rna(_Strand) -> undefined.

to_rna(DNA)->
  lists:foldr(fun($A,Acc)->
                [$U|Acc];
                ($T,Acc)->
                [$A|Acc];
                ($C,Acc)->
                [$G|Acc];
                ($G,Acc)->
                [$c|Acc]
              end).
