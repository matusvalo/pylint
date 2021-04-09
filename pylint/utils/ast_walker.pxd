import cython

@cython.final
cdef class ASTWalker:
    cdef public int nbstatements
    cdef public object visit_events
    cdef public object leave_events
    cdef public object linter
    cdef int _is_method_enabled(self, method) except -1
    cpdef walk(self, astroid)
