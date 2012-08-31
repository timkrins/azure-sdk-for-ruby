#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "test_helper"
require "azure/core/service"

describe Azure::Core::Service do
  let :signer do
    double()
  end

  let :request do
    req = MiniTest::Mock.new
    req.stub(:call, response)
    req
  end

  let :response do
    double()
  end

  let :request_factory do
    rf = MiniTest::Mock.new
    rf.stub(:new, request)
    rf
  end

  let :authorizer do
    auth = MiniTest::Mock.new
    auth.stub(:sign)
    auth
  end

  subject do
    Azure::Core::Service.new(signer, authorizer)
  end

  it "instantiates a new request and signs it" do
    request_factory.expect(:new, request, [:get, "/", nil])
    authorizer.expect(:sign, request, [request, signer])

    subject.call(:get, "/", nil, request_factory)

    request_factory.verify
    authorizer.verify
  end

  it "returns the response" do
    resp = subject.call(:get, "/", nil, request_factory)
    resp.must_equal response
  end

  it "yields the request before signing it" do
    subject.call(:get, "/", nil, request_factory) do |req|
      authorizer.expect(:sign, req, [req, signer])
    end

    authorizer.verify
  end
end
