//
//  ErrorTracker.swift
//  Core
//

import RxCocoa
import RxSwift

public final class ErrorTracker: SharedSequenceConvertibleType {
    public typealias SharingStrategy = DriverSharingStrategy
    private let _subject = PublishSubject<Error>()
    public init() {}
    func trackError<O: ObservableConvertibleType>(from source: O) -> Observable<O.Element> {
        return source.asObservable()
            .catch { [_subject] error in
                _subject.onNext(error)
                return .empty()
            }
    }

    public func asSharedSequence() -> SharedSequence<SharingStrategy, Error> {
        return _subject.asObservable().asDriverOnErrorJustComplete()
    }

    public func asObservable() -> Observable<Error> {
        return _subject.asObservable()
    }

    private func onError(_ error: Error) {
        _subject.onNext(error)
    }
    deinit {
        _subject.onCompleted()
    }
}

public extension ObservableConvertibleType {
    func trackError(_ errorTracker: ErrorTracker) -> Observable<Element> {
        return errorTracker.trackError(from: self)
    }
}

private extension ObservableType {
    
    func catchErrorJustComplete() -> Observable<Element> {
        self.catch { _ in
            return Observable.empty()
        }
    }

    func asDriverOnErrorJustComplete() -> Driver<Element> {
        asDriver { error in
            return Driver.empty()
        }
    }

    func asDriverOnErrorNever() -> Driver<Element> {
        asDriver { error in
            return .never()
        }
    }
    
    func mapToVoid() -> Observable<Void> {
        map { _ in }
    }
}