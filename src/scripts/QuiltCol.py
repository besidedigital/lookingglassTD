
import traceback

class QuiltCol :
    def __init__(self, ownerComp) :
        self.ownerComp = ownerComp
    
    # helper function sets the parameter of
    def _set_par(self,camera_op ,par) : 
        try:
            camera_op.par.__getattribute__(par.name).val = par.val
        except Exception as e:
            print(traceback.format_exc())



    
    def SetPar(self, par) :
        map(lambda x : self._set_par(x, par),
            self.ownerComp.findChildren(
                maxDepth = 1,
                name = "item*"
            )
        )
        pass

