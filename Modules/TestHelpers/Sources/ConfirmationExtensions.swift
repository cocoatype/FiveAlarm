import Testing

import FiveTestHelpersInterface

extension Confirmation: FiveTestHelpersInterface.Expectation {
    public func fulfill() { confirm() }
}
