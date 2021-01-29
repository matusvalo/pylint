# Licensed under the GPL: https://www.gnu.org/licenses/old-licenses/gpl-2.0.html
# For details: https://github.com/PyCQA/pylint/blob/master/COPYING

"""Checker mixin for deprecated functionality."""

import abc
from itertools import chain

import astroid

class DeprecatedMixin(metaclass=abc.ABCMeta):

    @abc.abstractmethod
    def deprecated_methods(self):
        """Returns Iterator of deprecated methods."""

    def check_deprecated_method(self, node, inferred):

        if isinstance(node.func, astroid.Attribute):
            func_name = node.func.attrname
        elif isinstance(node.func, astroid.Name):
            func_name = node.func.name
        else:
            # Not interested in other nodes.
            return

        # Reject nodes which aren't of interest to us.
        acceptable_nodes = (
            astroid.BoundMethod,
            astroid.UnboundMethod,
            astroid.FunctionDef,
        )
        if not isinstance(inferred, acceptable_nodes):
            return
        qname = inferred.qname()
        if any(
            name in self.deprecated_methods() for name in (qname, func_name)
        ):
            self.add_message("deprecated-method", node=node, args=(func_name,))
