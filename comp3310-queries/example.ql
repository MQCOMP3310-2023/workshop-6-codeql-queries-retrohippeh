import java

from LoopStmt loop, MethodAccess call, Method method
where
    loop.getAChild*() = call.getEnclosingStmt() and
    call.getMethod() = method and
    method.hasName("nextLine") 
    select call,loop, "This calls nextLine of a scanner in a loop"
