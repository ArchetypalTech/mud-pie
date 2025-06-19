(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "fluentbase_v1preview" "_input_size" (func (;0;) (type 4)))
  (import "fluentbase_v1preview" "_read" (func (;1;) (type 0)))
  (import "fluentbase_v1preview" "_write" (func (;2;) (type 5)))
  (import "fluentbase_v1preview" "_exit" (func (;3;) (type 6)))
  (func (;4;) (type 0) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      local.get 1
      i32.const 32
      i32.add
      local.tee 4
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      call 5
      local.get 0
      i32.load offset=4
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 1
        i32.const 28
        i32.add
        local.tee 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.sub
        local.tee 3
        i32.const 3
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.get 1
        i32.add
        local.get 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 65280
        i32.and
        i32.const 8
        i32.shl
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store align=1
        return
      end
      local.get 1
      local.get 3
      i32.const 262872
      call 6
      unreachable
    end
    local.get 3
    call 7
    unreachable)
  (func (;5;) (type 5) (param i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.load offset=4
        local.tee 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        i32.sub
        local.tee 2
        call 27
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.get 0
        i32.load offset=4
        i32.add
        i32.const 0
        local.get 2
        memory.fill
      end
      local.get 0
      local.get 1
      i32.store offset=4
    end)
  (func (;6;) (type 0) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 94
    unreachable)
  (func (;7;) (type 6) (param i32)
    local.get 0
    call 95
    unreachable)
  (func (;8;) (type 2) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 33554432
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 67108864
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call 9
        return
      end
      local.get 0
      local.get 1
      call 10
      return
    end
    local.get 0
    local.get 1
    call 11)
  (func (;9;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 10
    local.set 3
    local.get 0
    i32.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
      local.get 4
      local.set 0
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -3
        i32.add
        local.get 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        local.tee 9
        i32.const 263851
        i32.add
        i32.load8_u
        i32.store8
        local.get 6
        i32.const -4
        i32.add
        local.get 9
        i32.const 263850
        i32.add
        i32.load8_u
        i32.store8
        local.get 6
        i32.const -1
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        local.tee 7
        i32.const 263851
        i32.add
        i32.load8_u
        i32.store8
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        i32.const 263850
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.add
      i32.const -1
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      local.tee 6
      i32.const 263851
      i32.add
      i32.load8_u
      i32.store8
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 6
      i32.const 263850
      i32.add
      i32.load8_u
      i32.store8
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.const 30
      i32.and
      i32.const 263851
      i32.add
      i32.load8_u
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call 91
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;10;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    i32.const 129
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const -2
      i32.add
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 55
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 263848
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const -1
    i32.add
    i32.const 129
    local.get 3
    i32.sub
    call 91
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set 0
    local.get 0)
  (func (;11;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    i32.const 129
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const -2
      i32.add
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 87
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 263848
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const -1
    i32.add
    i32.const 129
    local.get 3
    i32.sub
    call 91
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set 0
    local.get 0)
  (func (;12;) (type 6) (param i32)
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    i32.load offset=16
    call_indirect (type 0))
  (func (;13;) (type 5) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        local.get 2
        i32.const 12
        i32.add
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.store offset=12
      local.get 2
      i32.const 8
      i32.add
      local.set 2
    end
    local.get 2
    local.get 0
    i32.store)
  (func (;14;) (type 0) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call 15
    local.get 3
    i32.load offset=8
    local.set 1
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.load offset=12
      local.get 2
      call 16
      unreachable
    end
    local.get 0
    local.get 3
    i32.load offset=12
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;15;) (type 5) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=4
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        local.get 0
        i64.const 4294967296
        i64.store offset=4 align=4
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      i32.const 0
      i32.load8_u offset=264180
      drop
      block  ;; label = @2
        i32.const 1
        local.get 1
        call 19
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      i32.const 1
      i32.store offset=4
      i32.const 1
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store)
  (func (;16;) (type 0) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 29
      unreachable
    end
    local.get 2
    call 35
    unreachable)
  (func (;17;) (type 7))
  (func (;18;) (type 7)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    call 0
                    i32.const -1024
                    i32.add
                    local.tee 1
                    i32.const 3
                    i32.le_u
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load8_u offset=264180
                    drop
                    i32.const 8
                    local.get 1
                    call 19
                    local.tee 2
                    i32.const 1024
                    local.get 1
                    call 1
                    local.get 2
                    i32.load8_u
                    i32.const 239
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 2
                    i32.load8_u offset=1
                    i32.const 255
                    i32.and
                    i32.const 105
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 2
                    i32.load8_u offset=2
                    i32.const 255
                    i32.and
                    i32.const 12
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 2
                    i32.load8_u offset=3
                    i32.const 255
                    i32.and
                    i32.const 192
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 0
                    i32.const 24
                    i32.add
                    i32.const 5
                    i32.const 264152
                    call 14
                    local.get 0
                    i32.load offset=24
                    local.set 3
                    local.get 0
                    i32.load offset=28
                    local.tee 4
                    i32.const 0
                    i32.load offset=263096 align=1
                    i32.store align=1
                    local.get 4
                    i32.const 4
                    i32.add
                    local.tee 1
                    i32.const 0
                    i32.load8_u offset=263100
                    i32.store8
                    local.get 0
                    i32.const 16
                    i32.add
                    i32.const 0
                    i32.const 262888
                    call 14
                    local.get 0
                    i32.const 0
                    i32.store offset=36
                    i32.const 0
                    i32.load8_u offset=264180
                    drop
                    local.get 0
                    local.get 0
                    i32.load offset=16
                    local.tee 2
                    i32.store offset=40
                    local.get 0
                    local.get 0
                    i32.load offset=20
                    i32.store offset=32
                    local.get 0
                    i32.const 32
                    local.get 2
                    i32.const 10
                    i32.shr_u
                    i32.clz
                    i32.sub
                    local.tee 2
                    i32.const 7
                    local.get 2
                    i32.const 7
                    i32.lt_u
                    select
                    i32.const 2
                    i32.shl
                    i32.const 1
                    i32.or
                    i32.store offset=44
                    i32.const 1
                    i32.const 5
                    call 19
                    local.tee 5
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 5
                    local.get 4
                    i32.load align=1
                    i32.store align=1
                    local.get 5
                    i32.const 4
                    i32.add
                    local.get 1
                    i32.load8_u
                    i32.store8
                    local.get 0
                    i32.const 32
                    i32.add
                    i32.const 0
                    i32.const 32
                    call 4
                    local.get 0
                    i32.const 32
                    i32.add
                    i32.const 64
                    call 5
                    local.get 0
                    i32.const 32
                    i32.store offset=52
                    local.get 0
                    i32.load offset=40
                    local.tee 2
                    i32.const 31
                    i32.le_u
                    br_if 3 (;@5;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=44
                        local.tee 2
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 32
                        i32.add
                        i32.const 2
                        call 20
                        br 1 (;@9;)
                      end
                      local.get 2
                      call 21
                    end
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 8
                    i32.add
                    local.get 0
                    i32.const 32
                    i32.add
                    i32.const 8
                    i32.add
                    local.tee 2
                    i64.load align=4
                    i64.store
                    local.get 0
                    local.get 0
                    i64.load offset=32 align=4
                    i64.store offset=128
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 32
                    call 22
                    local.get 2
                    i32.const 32
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=36
                    local.tee 6
                    i32.const 32
                    local.get 6
                    i32.const 32
                    i32.lt_u
                    select
                    local.tee 1
                    i32.store offset=36
                    local.get 0
                    i32.const 112
                    i32.add
                    local.get 5
                    i32.const 5
                    call 23
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 0
                    i32.const 112
                    i32.add
                    call 24
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=132
                      local.tee 2
                      i32.const 31
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 128
                      i32.add
                      i32.const 32
                      call 5
                      local.get 0
                      i32.load offset=132
                      local.set 2
                    end
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 0
                    local.get 2
                    call 4
                    local.get 0
                    i32.load offset=92
                    local.set 7
                    local.get 0
                    i32.const 128
                    i32.add
                    local.get 0
                    i32.load offset=132
                    local.get 0
                    i32.load offset=96
                    local.tee 2
                    call 4
                    block  ;; label = @9
                      local.get 2
                      local.get 0
                      i32.load offset=136
                      local.get 0
                      i32.load offset=132
                      local.tee 8
                      i32.sub
                      local.tee 9
                      i32.le_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 128
                      i32.add
                      local.get 2
                      call 25
                      local.get 0
                      i32.load offset=136
                      local.get 0
                      i32.load offset=132
                      local.tee 8
                      i32.sub
                      local.set 9
                    end
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=128
                      local.get 8
                      i32.add
                      local.get 7
                      local.get 2
                      memory.copy
                    end
                    local.get 2
                    local.get 9
                    i32.gt_u
                    br_if 4 (;@4;)
                    local.get 0
                    local.get 8
                    local.get 2
                    i32.add
                    local.tee 2
                    i32.store offset=132
                    block  ;; label = @9
                      local.get 2
                      i32.const 31
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 128
                      i32.add
                      local.get 2
                      i32.const -32
                      i32.and
                      i32.const 32
                      i32.add
                      call 5
                    end
                    local.get 0
                    i32.const 88
                    i32.add
                    call 12
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 0
                            i32.load offset=136
                            local.tee 2
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 128
                            i32.add
                            call 26
                            i32.const 32
                            local.set 6
                            br 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=32
                          local.get 1
                          i32.add
                          local.get 0
                          i32.load offset=128
                          local.tee 6
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 0
                          i32.load offset=44
                          local.tee 8
                          i32.const 1
                          i32.and
                          br_if 1 (;@10;)
                          local.get 8
                          local.get 0
                          i32.load offset=140
                          local.tee 9
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 9
                          i32.const 1
                          i32.and
                          br_if 1 (;@10;)
                          local.get 2
                          i32.const 32
                          i32.add
                          local.set 6
                          local.get 0
                          i32.load offset=132
                          local.get 1
                          i32.add
                          local.set 1
                          local.get 0
                          i32.const 128
                          i32.add
                          call 26
                          br 2 (;@9;)
                        end
                        local.get 0
                        i32.const 32
                        i32.add
                        call 26
                        local.get 0
                        i32.const 32
                        i32.add
                        i32.const 8
                        i32.add
                        local.get 0
                        i32.const 128
                        i32.add
                        i32.const 8
                        i32.add
                        i64.load
                        local.tee 10
                        i64.store
                        local.get 0
                        local.get 0
                        i64.load offset=128
                        i64.store offset=32
                        local.get 10
                        i32.wrap_i64
                        local.set 6
                        local.get 0
                        i32.load offset=36
                        local.set 1
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.const 88
                      i32.add
                      i32.const 12
                      i32.add
                      local.get 0
                      i32.const 128
                      i32.add
                      i32.const 12
                      i32.add
                      i32.load
                      i32.store
                      local.get 0
                      local.get 0
                      i64.load offset=132 align=4
                      local.tee 10
                      i64.store offset=92 align=4
                      local.get 0
                      local.get 6
                      i32.store offset=88
                      local.get 0
                      i32.const 32
                      i32.add
                      local.get 10
                      i32.wrap_i64
                      local.tee 2
                      call 27
                      local.get 0
                      i32.load offset=36
                      local.set 1
                      block  ;; label = @10
                        local.get 2
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load offset=32
                        local.get 1
                        i32.add
                        local.get 6
                        local.get 2
                        memory.copy
                      end
                      local.get 2
                      local.get 0
                      i32.load offset=40
                      local.tee 6
                      local.get 1
                      i32.sub
                      local.tee 8
                      i32.gt_u
                      br_if 6 (;@3;)
                      local.get 1
                      local.get 2
                      i32.add
                      local.set 1
                      local.get 0
                      i32.const 88
                      i32.add
                      call 26
                    end
                    i32.const 5
                    local.get 5
                    call 13
                    local.get 0
                    i32.load offset=32
                    local.set 5
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=44
                        local.tee 2
                        i32.const 1
                        i32.and
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 2
                        i32.store offset=100
                        local.get 0
                        local.get 1
                        i32.store offset=96
                        local.get 0
                        local.get 5
                        i32.store offset=92
                        local.get 0
                        i32.const 263792
                        i32.store offset=88
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 2
                      i32.const 5
                      i32.shr_u
                      local.tee 2
                      local.get 1
                      i32.add
                      i32.store offset=60
                      local.get 0
                      local.get 5
                      local.get 2
                      i32.sub
                      i32.store offset=56
                      local.get 0
                      local.get 2
                      local.get 6
                      i32.add
                      i32.store offset=52
                      local.get 0
                      i32.const 64
                      i32.add
                      local.get 0
                      i32.const 52
                      i32.add
                      call 24
                      local.get 0
                      local.get 2
                      i32.store offset=80
                      local.get 0
                      i32.load offset=72
                      local.tee 1
                      local.get 2
                      i32.lt_u
                      br_if 7 (;@2;)
                      local.get 0
                      i32.const 64
                      i32.add
                      i32.const 8
                      i32.add
                      local.tee 5
                      local.get 1
                      local.get 2
                      i32.sub
                      i32.store
                      local.get 0
                      i32.const 88
                      i32.add
                      i32.const 8
                      i32.add
                      local.get 5
                      i64.load align=4
                      local.tee 10
                      i64.store
                      local.get 0
                      local.get 0
                      i32.load offset=68
                      local.get 2
                      i32.add
                      i32.store offset=68
                      local.get 0
                      local.get 0
                      i64.load offset=64 align=4
                      i64.store offset=88
                      local.get 10
                      i32.wrap_i64
                      local.set 1
                    end
                    local.get 1
                    i32.const 31
                    i32.le_u
                    br_if 7 (;@1;)
                    local.get 0
                    i32.load offset=92
                    local.set 6
                    local.get 0
                    i32.const 8
                    i32.add
                    local.get 1
                    i32.const -32
                    i32.add
                    local.tee 2
                    i32.const 264152
                    call 14
                    local.get 0
                    i32.load offset=8
                    local.set 5
                    local.get 0
                    i32.load offset=12
                    local.set 1
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 6
                      i32.const 32
                      i32.add
                      local.get 2
                      memory.copy
                    end
                    local.get 0
                    local.get 2
                    i32.store offset=72
                    local.get 0
                    local.get 1
                    i32.store offset=68
                    local.get 0
                    local.get 5
                    i32.store offset=64
                    local.get 0
                    i32.const 112
                    i32.add
                    local.get 0
                    i32.const 64
                    i32.add
                    call 24
                    local.get 0
                    i32.const 88
                    i32.add
                    call 12
                    local.get 3
                    local.get 4
                    call 13
                    local.get 0
                    i32.load offset=116
                    local.get 0
                    i32.load offset=120
                    call 2
                    local.get 0
                    i32.const 112
                    i32.add
                    call 12
                    local.get 0
                    i32.const 144
                    i32.add
                    global.set 0
                    return
                  end
                  local.get 0
                  i32.const 0
                  i32.store offset=104
                  local.get 0
                  i32.const 1
                  i32.store offset=92
                  local.get 0
                  i32.const 263088
                  i32.store offset=88
                  local.get 0
                  i64.const 4
                  i64.store offset=96 align=4
                  local.get 0
                  i32.const 88
                  i32.add
                  i32.const 262988
                  call 28
                  unreachable
                end
                local.get 0
                i32.const 0
                i32.store offset=104
                local.get 0
                i32.const 1
                i32.store offset=92
                local.get 0
                i32.const 263032
                i32.store offset=88
                local.get 0
                i64.const 4
                i64.store offset=96 align=4
                local.get 0
                i32.const 88
                i32.add
                i32.const 262988
                call 28
                unreachable
              end
              i32.const 5
              call 29
              unreachable
            end
            local.get 0
            i32.const 2
            i32.store offset=92
            local.get 0
            i32.const 263704
            i32.store offset=88
            local.get 0
            i64.const 2
            i64.store offset=100 align=4
            local.get 0
            i32.const 1
            i32.store offset=124
            local.get 0
            i32.const 1
            i32.store offset=116
            local.get 0
            local.get 2
            i32.store offset=64
            local.get 0
            local.get 0
            i32.const 112
            i32.add
            i32.store offset=96
            local.get 0
            local.get 0
            i32.const 64
            i32.add
            i32.store offset=120
            local.get 0
            local.get 0
            i32.const 52
            i32.add
            i32.store offset=112
            local.get 0
            i32.const 88
            i32.add
            i32.const 263720
            call 28
            unreachable
          end
          local.get 0
          local.get 9
          i32.store offset=116
          local.get 0
          local.get 2
          i32.store offset=112
          local.get 0
          i32.const 112
          i32.add
          call 30
          unreachable
        end
        local.get 0
        local.get 8
        i32.store offset=116
        local.get 0
        local.get 2
        i32.store offset=112
        local.get 0
        i32.const 112
        i32.add
        call 30
        unreachable
      end
      local.get 0
      i32.const 2
      i32.store offset=92
      local.get 0
      i32.const 262956
      i32.store offset=88
      local.get 0
      i64.const 2
      i64.store offset=100 align=4
      local.get 0
      i32.const 1
      i32.store offset=124
      local.get 0
      i32.const 1
      i32.store offset=116
      local.get 0
      local.get 1
      i32.store offset=84
      local.get 0
      local.get 0
      i32.const 112
      i32.add
      i32.store offset=96
      local.get 0
      local.get 0
      i32.const 84
      i32.add
      i32.store offset=120
      local.get 0
      local.get 0
      i32.const 80
      i32.add
      i32.store offset=112
      local.get 0
      i32.const 88
      i32.add
      i32.const 262972
      call 28
      unreachable
    end
    i32.const 32
    local.get 1
    i32.const 262988
    call 6
    unreachable)
  (func (;19;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.load offset=264176
      local.tee 2
      i32.const 264192
      local.get 2
      select
      local.tee 2
      local.get 0
      i32.const -1
      i32.add
      i32.and
      local.tee 3
      i32.sub
      i32.const 0
      local.get 3
      select
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.add
      local.tee 0
      memory.size
      local.tee 1
      i32.const 16
      i32.shl
      local.tee 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.add
      i32.const 65536
      i32.add
      i32.const 16
      i32.shr_u
      local.tee 3
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.sub
      memory.grow
      drop
    end
    i32.const 0
    local.get 0
    i32.store offset=264176
    local.get 2)
  (func (;20;) (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    i32.load8_u offset=264180
    drop
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=12
    local.set 5
    block  ;; label = @1
      i32.const 4
      i32.const 20
      call 19
      local.tee 6
      br_if 0 (;@1;)
      i32.const 20
      call 29
      unreachable
    end
    local.get 6
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 6
    i32.store offset=12
    local.get 6
    local.get 5
    i32.const 2
    i32.shr_u
    i32.const 7
    i32.and
    i32.store offset=12
    local.get 6
    local.get 5
    i32.const 5
    i32.shr_u
    local.tee 0
    local.get 3
    i32.add
    i32.store offset=8
    local.get 6
    local.get 4
    local.get 0
    i32.sub
    i32.store offset=4
    local.get 6
    local.get 2
    local.get 0
    i32.add
    i32.store)
  (func (;21;) (type 6) (param i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 1
    i32.const 1
    i32.add
    i32.store offset=16
    block  ;; label = @1
      local.get 1
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    call 46
    unreachable)
  (func (;22;) (type 5) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=12
        local.tee 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.const 5
          i32.shr_u
          local.get 1
          i32.add
          local.tee 3
          i32.const 134217728
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          i32.const 1
          call 20
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.const 5
        i32.shl
        local.get 2
        i32.const 31
        i32.and
        i32.or
        i32.store offset=12
      end
      local.get 0
      local.get 0
      i32.load
      local.get 1
      i32.add
      i32.store
      local.get 0
      local.get 0
      i32.load offset=8
      local.get 1
      i32.sub
      i32.store offset=8
      local.get 0
      i32.const 0
      local.get 0
      i32.load offset=4
      local.tee 2
      local.get 1
      i32.sub
      local.tee 1
      local.get 1
      local.get 2
      i32.gt_u
      select
      i32.store offset=4
    end)
  (func (;23;) (type 0) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 4
    i32.add
    local.get 2
    call 48
    local.get 3
    i32.load offset=8
    local.set 4
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 5
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        local.get 2
        memory.copy
      end
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 4
    local.get 3
    i32.load offset=12
    i32.const 264152
    call 16
    unreachable)
  (func (;24;) (type 5) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 3
        local.get 1
        i32.load
        local.tee 4
        i32.eq
        br_if 0 (;@2;)
        call 66
        local.tee 1
        i32.const 1
        i32.store offset=8
        local.get 1
        local.get 4
        i32.store offset=4
        local.get 1
        local.get 2
        i32.store
        i32.const 263652
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        i32.const 263560
        local.set 5
        i32.const 0
        local.set 3
        i32.const 1
        local.set 2
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 263600
      i32.const 263580
      local.get 2
      i32.const 1
      i32.and
      select
      local.set 5
      local.get 2
      i32.const 1
      i32.or
      local.set 1
      local.get 4
      local.set 3
    end
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store)
  (func (;25;) (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load offset=4
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=12
                    local.tee 4
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 1
                    i32.add
                    local.tee 5
                    local.get 3
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 4
                    i32.load offset=16
                    i32.const 1
                    i32.ne
                    br_if 2 (;@6;)
                    local.get 4
                    i32.load
                    local.tee 6
                    local.get 0
                    i32.load
                    local.tee 7
                    local.get 4
                    i32.load offset=4
                    local.tee 8
                    i32.sub
                    local.tee 1
                    local.get 5
                    i32.add
                    local.tee 9
                    i32.ge_u
                    br_if 3 (;@5;)
                    local.get 6
                    local.get 5
                    i32.lt_u
                    br_if 4 (;@4;)
                    local.get 1
                    local.get 3
                    i32.lt_u
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 7
                      local.get 3
                      memory.copy
                    end
                    local.get 0
                    local.get 8
                    i32.store
                    local.get 0
                    local.get 4
                    i32.load
                    i32.store offset=8
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.get 4
                  i32.const 5
                  i32.shr_u
                  local.tee 5
                  i32.add
                  local.set 6
                  local.get 5
                  local.get 3
                  i32.lt_u
                  br_if 4 (;@3;)
                  local.get 6
                  local.get 3
                  i32.sub
                  local.get 1
                  i32.lt_u
                  br_if 4 (;@3;)
                  local.get 0
                  i32.load
                  local.tee 1
                  local.get 5
                  i32.sub
                  local.set 5
                  block  ;; label = @8
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 1
                    local.get 3
                    memory.copy
                  end
                  local.get 0
                  local.get 4
                  i32.const 31
                  i32.and
                  i32.store offset=12
                  local.get 0
                  local.get 5
                  i32.store
                  local.get 0
                  local.get 6
                  i32.store offset=8
                  br 6 (;@1;)
                end
                i32.const 263736
                i32.const 8
                i32.const 263744
                call 47
                unreachable
              end
              local.get 2
              i32.const 8
              i32.add
              i32.const 1
              local.get 4
              i32.load offset=12
              local.tee 3
              i32.const 9
              i32.add
              i32.shl
              local.tee 1
              local.get 5
              local.get 1
              local.get 5
              i32.gt_u
              select
              local.get 5
              local.get 3
              select
              i32.const 263760
              call 79
              local.get 2
              i32.const 0
              i32.store offset=28
              local.get 2
              local.get 2
              i64.load offset=8
              i64.store offset=20 align=4
              local.get 0
              i32.load
              local.set 6
              local.get 2
              i32.const 20
              i32.add
              local.get 0
              i32.load offset=4
              local.tee 5
              call 44
              local.get 2
              i32.load offset=24
              local.set 1
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.load offset=28
                i32.add
                local.get 6
                local.get 5
                memory.copy
              end
              local.get 4
              call 85
              local.get 0
              local.get 1
              i32.store
              local.get 0
              local.get 3
              i32.const 2
              i32.shl
              i32.const 1
              i32.or
              i32.store offset=12
              local.get 0
              local.get 2
              i32.load offset=20
              i32.store offset=8
              br 4 (;@1;)
            end
            local.get 0
            local.get 5
            i32.store offset=8
            br 3 (;@1;)
          end
          local.get 9
          local.get 5
          i32.lt_u
          br_if 1 (;@2;)
          local.get 4
          local.get 1
          local.get 3
          i32.add
          local.tee 3
          i32.store offset=8
          local.get 4
          local.get 9
          local.get 6
          i32.const 1
          i32.shl
          local.tee 5
          local.get 9
          local.get 5
          i32.gt_u
          select
          local.get 3
          i32.sub
          call 44
          local.get 0
          local.get 4
          i32.load offset=4
          local.get 1
          i32.add
          i32.store
          local.get 0
          local.get 4
          i32.load
          local.get 1
          i32.sub
          i32.store offset=8
          br 2 (;@1;)
        end
        local.get 2
        local.get 6
        i32.store offset=20
        local.get 2
        local.get 5
        local.get 3
        i32.add
        i32.store offset=28
        local.get 2
        local.get 0
        i32.load
        local.get 5
        i32.sub
        i32.store offset=24
        local.get 2
        i32.const 20
        i32.add
        local.get 1
        call 44
        local.get 0
        local.get 2
        i32.load offset=24
        local.get 5
        i32.add
        i32.store
        local.get 0
        local.get 2
        i32.load offset=20
        local.get 5
        i32.sub
        i32.store offset=8
        br 1 (;@1;)
      end
      call 90
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;26;) (type 6) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.get 1
      i32.const 5
      i32.shr_u
      local.tee 1
      i32.add
      local.get 0
      i32.load
      local.get 1
      i32.sub
      call 89
      return
    end
    local.get 1
    call 85)
  (func (;27;) (type 5) (param i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=4
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call 25
    end)
  (func (;28;) (type 5) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 1
    i32.store16 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 4
    i32.add
    call 92
    unreachable)
  (func (;29;) (type 6) (param i32)
    local.get 0
    call 32
    unreachable)
  (func (;30;) (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 2
    i32.store offset=12
    local.get 1
    i32.const 263456
    i32.store offset=8
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    local.get 1
    i32.const 2
    i32.store offset=44
    local.get 1
    i32.const 2
    i32.store offset=36
    local.get 1
    local.get 0
    i32.store offset=40
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    i32.const 263472
    call 28
    unreachable)
  (func (;31;) (type 8) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      local.get 3
      call 19
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      local.get 3
      local.get 1
      i32.lt_u
      select
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 3
      memory.copy
    end
    local.get 2)
  (func (;32;) (type 6) (param i32)
    local.get 0
    call 33
    unreachable)
  (func (;33;) (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 2
    i32.store offset=20
    local.get 1
    i32.const 263212
    i32.store offset=16
    local.get 1
    i64.const 1
    i64.store offset=28 align=4
    local.get 1
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 1
    local.get 1
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 1
    i32.const 16
    i32.add
    call 36
    unreachable)
  (func (;34;) (type 0) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          local.tee 3
          br_if 0 (;@3;)
          i32.const 0
          i32.load8_u offset=264180
          drop
          i32.const 1
          local.get 1
          call 19
          local.set 2
          br 2 (;@1;)
        end
        local.get 2
        i32.load
        local.get 3
        i32.const 1
        local.get 1
        call 31
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      i32.load8_u offset=264180
      drop
      i32.const 1
      local.get 1
      call 19
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 1
    local.get 2
    select
    i32.store offset=4
    local.get 0
    local.get 2
    i32.eqz
    i32.store)
  (func (;35;) (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 263152
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call 28
    unreachable)
  (func (;36;) (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    i32.const 0
    i32.store16 offset=44
    local.get 1
    i32.const 263228
    i32.store offset=40
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=36
    local.get 1
    i32.const 36
    i32.add
    call 92
    unreachable)
  (func (;37;) (type 0) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.tee 5
          i32.const 1
          i32.shl
          local.tee 1
          local.get 2
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 1
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 5
          i32.store offset=28
          local.get 3
          local.get 0
          i32.load offset=4
          i32.store offset=20
          i32.const 1
          local.set 2
        end
        local.get 3
        local.get 2
        i32.store offset=24
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 3
        i32.const 20
        i32.add
        call 34
        local.get 3
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 0
        local.get 3
        i32.load offset=12
        local.set 4
      end
      local.get 4
      local.get 0
      i32.const 263160
      call 16
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;38;) (type 2) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 263101
    i32.const 5
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;39;) (type 6) (param i32))
  (func (;40;) (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call 37
      local.get 0
      i32.load offset=8
      local.set 3
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;41;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    local.get 2
    local.set 4
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call 37
      local.get 0
      i32.load offset=8
      local.set 4
    end
    local.get 0
    i32.load offset=4
    local.get 4
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 4
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 4
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 4
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            br 3 (;@1;)
          end
          local.get 4
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 4
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 4
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          br 2 (;@1;)
        end
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get 4
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;42;) (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end
    local.get 0
    i32.const 263108
    local.get 1
    call 43)
  (func (;43;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i64.const 3758096416
    i64.store offset=8 align=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              local.tee 1
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 2
            i32.load offset=12
            local.tee 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=8
            local.tee 1
            local.get 0
            i32.const 3
            i32.shl
            i32.add
            local.set 5
            local.get 0
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 6
            local.get 2
            i32.load
            local.set 0
            loop  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load
                local.get 0
                i32.load
                local.get 7
                local.get 3
                i32.load offset=4
                i32.load offset=12
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 1
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 1
                i32.load
                local.get 3
                local.get 1
                i32.const 4
                i32.add
                i32.load
                call_indirect (type 2)
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 1
                br 5 (;@1;)
              end
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.tee 1
              local.get 5
              i32.eq
              br_if 3 (;@2;)
              br 0 (;@5;)
            end
          end
          local.get 1
          i32.const 24
          i32.mul
          local.set 8
          local.get 1
          i32.const -1
          i32.add
          i32.const 536870911
          i32.and
          i32.const 1
          i32.add
          local.set 6
          local.get 2
          i32.load offset=8
          local.set 9
          local.get 2
          i32.load
          local.set 0
          i32.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load
              local.get 0
              i32.load
              local.get 1
              local.get 3
              i32.load offset=4
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              local.set 1
              br 4 (;@1;)
            end
            i32.const 0
            local.set 5
            i32.const 0
            local.set 10
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  local.get 7
                  i32.add
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.load16_u
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 10
                i32.add
                i32.load16_u
                local.set 10
                br 1 (;@5;)
              end
              local.get 9
              local.get 1
              i32.const 12
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 10
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load16_u
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 2
                i32.add
                i32.load16_u
                local.set 5
                br 1 (;@5;)
              end
              local.get 9
              local.get 1
              i32.const 4
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 5
            end
            local.get 3
            local.get 5
            i32.store16 offset=14
            local.get 3
            local.get 10
            i32.store16 offset=12
            local.get 3
            local.get 1
            i32.const 20
            i32.add
            i32.load
            i32.store offset=8
            block  ;; label = @5
              local.get 9
              local.get 1
              i32.const 16
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              local.get 1
              i32.load offset=4
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              local.set 1
              br 4 (;@1;)
            end
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            local.get 8
            local.get 7
            i32.const 24
            i32.add
            local.tee 7
            i32.eq
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.set 6
      end
      block  ;; label = @2
        local.get 6
        local.get 2
        i32.load offset=4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        i32.load
        local.get 2
        i32.load
        local.get 6
        i32.const 3
        i32.shl
        i32.add
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 3
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;44;) (type 5) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.load
      local.tee 3
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 1
            i32.add
            local.tee 1
            local.get 4
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            br 1 (;@3;)
          end
          i32.const 0
          local.set 5
          block  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            local.tee 4
            local.get 1
            local.get 4
            i32.gt_u
            select
            local.tee 1
            i32.const 8
            local.get 1
            i32.const 8
            i32.gt_u
            select
            local.tee 1
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              local.get 2
              i32.const 28
              i32.add
              local.set 4
              br 1 (;@4;)
            end
            local.get 2
            i32.const 1
            i32.store offset=28
            local.get 0
            i32.load offset=4
            local.set 5
            local.get 2
            i32.const 24
            i32.add
            local.set 4
          end
          local.get 4
          local.get 3
          i32.store
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=28
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                i32.load offset=24
                local.tee 3
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.get 1
                call 45
                local.get 2
                i32.load offset=16
                local.set 3
                br 2 (;@4;)
              end
              local.get 5
              local.get 3
              i32.const 1
              local.get 1
              call 31
              local.set 3
              br 1 (;@4;)
            end
            local.get 2
            i32.const 8
            i32.add
            local.get 1
            call 45
            local.get 2
            i32.load offset=8
            local.set 3
          end
          local.get 3
          br_if 1 (;@2;)
          i32.const 1
          local.set 5
        end
        local.get 5
        local.get 1
        i32.const 263812
        call 16
        unreachable
      end
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;45;) (type 5) (param i32 i32)
    (local i32)
    i32.const 0
    i32.load8_u offset=264180
    drop
    i32.const 1
    local.get 1
    call 19
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func (;46;) (type 7)
    i32.const 263380
    i32.const 5
    i32.const 263388
    call 47
    unreachable)
  (func (;47;) (type 0) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 1
    i32.store offset=4
    local.get 3
    i64.const 4
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call 28
    unreachable)
  (func (;48;) (type 5) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=4
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          br_if 0 (;@3;)
          local.get 0
          i64.const 4294967296
          i64.store offset=4 align=4
          br 1 (;@2;)
        end
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        call 45
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.store offset=8
          local.get 0
          local.get 1
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        i32.store offset=8
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store offset=4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 4
      local.get 4
      i32.const -2
      i32.and
      local.get 2
      local.get 3
      call 50
      return
    end
    local.get 0
    local.get 4
    local.get 2
    local.get 3
    call 51)
  (func (;50;) (type 10) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    call 66
    local.tee 6
    i32.const 2
    i32.store offset=8
    local.get 6
    local.get 3
    i32.store
    local.get 6
    local.get 4
    local.get 3
    i32.sub
    local.get 5
    i32.add
    i32.store offset=4
    local.get 1
    local.get 6
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    local.get 2
    i32.eq
    local.tee 2
    select
    i32.store
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 4
      local.get 5
      call 51
      return
    end
    local.get 0
    local.get 6
    i32.store offset=12
    local.get 0
    local.get 5
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    i32.const 263652
    i32.store)
  (func (;51;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    local.get 1
    local.get 1
    i32.load offset=8
    local.tee 4
    i32.const 1
    i32.add
    i32.store offset=8
    block  ;; label = @1
      local.get 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      i32.const 263652
      i32.store
      return
    end
    call 46
    unreachable)
  (func (;52;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 3
    call 54)
  (func (;53;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const -2
    i32.and)
  (func (;54;) (type 11) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      call_indirect (type 3)
      local.set 1
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        local.get 3
        memory.copy
      end
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 3
      local.get 2
      i32.add
      local.get 1
      i32.sub
      i32.store
      return
    end
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 64)
  (func (;55;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 3
    call 56)
  (func (;56;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 1
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 8
        i32.add
        local.tee 6
        local.get 2
        local.get 1
        local.get 4
        call_indirect (type 3)
        local.tee 4
        i32.sub
        local.tee 2
        local.get 3
        i32.add
        local.tee 1
        i32.store
        local.get 5
        local.get 4
        i32.store
        local.get 5
        local.get 1
        i32.store offset=4
        local.get 5
        i32.const 32
        local.get 1
        i32.const 10
        i32.shr_u
        i32.clz
        i32.sub
        local.tee 1
        i32.const 7
        local.get 1
        i32.const 7
        i32.lt_u
        select
        i32.const 2
        i32.shl
        i32.const 1
        i32.or
        i32.store offset=12
        local.get 5
        local.get 2
        call 22
        local.get 0
        i32.const 8
        i32.add
        local.get 6
        i64.load align=4
        i64.store align=4
        local.get 0
        local.get 5
        i64.load align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call 61
    end
    local.get 5
    i32.const 16
    i32.add
    global.set 0)
  (func (;57;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.eq
      local.set 1
    end
    local.get 1)
  (func (;58;) (type 0) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -2
      i32.and
      local.get 1
      local.get 2
      call 59
      return
    end
    local.get 0
    call 60)
  (func (;59;) (type 0) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.sub
      local.get 2
      i32.add
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 263504
      i32.const 43
      local.get 3
      i32.const 15
      i32.add
      i32.const 263488
      i32.const 263620
      call 62
      unreachable
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;60;) (type 6) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    local.get 0
    i32.load offset=8
    local.tee 2
    i32.const -1
    i32.add
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        i32.const -1
        i32.le_s
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 263504
    i32.const 43
    local.get 1
    i32.const 15
    i32.add
    i32.const 263488
    i32.const 263636
    call 62
    unreachable)
  (func (;61;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.set 5
        local.get 4
        i32.const 4
        i32.add
        i32.const 8
        i32.add
        local.tee 6
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.store
        local.get 4
        local.get 5
        i32.store offset=4
        local.get 4
        local.get 2
        local.get 5
        i32.sub
        local.tee 2
        local.get 3
        i32.add
        i32.store offset=8
        local.get 4
        i32.const 32
        local.get 1
        i32.const 10
        i32.shr_u
        i32.clz
        i32.sub
        local.tee 1
        i32.const 7
        local.get 1
        i32.const 7
        i32.lt_u
        select
        i32.const 2
        i32.shl
        i32.const 1
        i32.or
        i32.store offset=16
        local.get 4
        i32.const 4
        i32.add
        local.get 2
        call 22
        local.get 0
        i32.const 8
        i32.add
        local.get 6
        i64.load align=4
        i64.store align=4
        local.get 0
        local.get 4
        i64.load offset=4 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 4
      i32.const 20
      i32.add
      local.get 2
      local.get 3
      call 23
      local.get 1
      call 60
      local.get 0
      local.get 4
      i32.load offset=20
      local.tee 1
      i32.store offset=8
      local.get 0
      local.get 4
      i64.load offset=24 align=4
      i64.store align=4
      local.get 0
      i32.const 32
      local.get 1
      i32.const 10
      i32.shr_u
      i32.clz
      i32.sub
      local.tee 1
      i32.const 7
      local.get 1
      i32.const 7
      i32.lt_u
      select
      i32.const 2
      i32.shl
      i32.const 1
      i32.or
      i32.store offset=12
    end
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;62;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 2
    i32.store offset=28
    local.get 5
    i32.const 263832
    i32.store offset=24
    local.get 5
    i64.const 2
    i64.store offset=36 align=4
    local.get 5
    i32.const 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 5
    i32.const 5
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call 28
    unreachable)
  (func (;63;) (type 2) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 263547
    i32.const 11
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;64;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    local.get 1
    i32.const 0
    local.get 1
    i32.load offset=8
    local.tee 4
    local.get 4
    i32.const 1
    i32.eq
    local.tee 4
    select
    i32.store offset=8
    block  ;; label = @1
      local.get 4
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call 23
      local.get 1
      call 60
      return
    end
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 1
    i32.load
    local.set 1
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      local.get 3
      memory.copy
    end
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func (;65;) (type 3) (param i32) (result i32)
    local.get 0)
  (func (;66;) (type 4) (result i32)
    (local i32)
    i32.const 0
    i32.load8_u offset=264180
    drop
    block  ;; label = @1
      i32.const 4
      i32.const 12
      call 19
      local.tee 0
      br_if 0 (;@1;)
      i32.const 12
      call 29
      unreachable
    end
    local.get 0)
  (func (;67;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load
    local.get 2
    local.get 3
    call 51)
  (func (;68;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load
    local.get 2
    local.get 3
    call 64)
  (func (;69;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load
    local.get 2
    local.get 3
    call 61)
  (func (;70;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load
    i32.load offset=8
    i32.const 1
    i32.eq)
  (func (;71;) (type 0) (param i32 i32 i32)
    local.get 0
    i32.load
    call 60)
  (func (;72;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 4
      local.get 4
      local.get 2
      local.get 3
      call 50
      return
    end
    local.get 0
    local.get 4
    local.get 2
    local.get 3
    call 51)
  (func (;73;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 6
    call 54)
  (func (;74;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 6
    call 56)
  (func (;75;) (type 0) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call 59
      return
    end
    local.get 0
    call 60)
  (func (;76;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    i32.const 263560
    i32.store)
  (func (;77;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 2
    local.get 3
    call 23)
  (func (;78;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.const 264152
    call 79
    local.get 4
    i32.load offset=8
    local.set 5
    local.get 4
    i32.load offset=12
    local.set 6
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 2
      local.get 3
      memory.copy
    end
    local.get 4
    local.get 3
    i32.store offset=28
    local.get 4
    local.get 6
    i32.store offset=24
    local.get 4
    local.get 5
    i32.store offset=20
    local.get 0
    local.get 4
    i32.const 20
    i32.add
    call 80
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;79;) (type 0) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call 48
    local.get 3
    i32.load offset=8
    local.set 1
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.load offset=12
      local.get 2
      call 16
      unreachable
    end
    local.get 0
    local.get 3
    i32.load offset=12
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;80;) (type 5) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.load
    local.tee 2
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load offset=4 align=4
    i64.store align=4
    local.get 0
    i32.const 32
    local.get 2
    i32.const 10
    i32.shr_u
    i32.clz
    i32.sub
    local.tee 1
    i32.const 7
    local.get 1
    i32.const 7
    i32.lt_u
    select
    i32.const 2
    i32.shl
    i32.const 1
    i32.or
    i32.store offset=12)
  (func (;81;) (type 3) (param i32) (result i32)
    i32.const 0)
  (func (;82;) (type 0) (param i32 i32 i32))
  (func (;83;) (type 9) (param i32 i32 i32 i32)
    local.get 1
    i32.load
    local.tee 1
    call 21
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    i32.const 263792
    i32.store)
  (func (;84;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 1
        i32.load offset=16
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i32.const 8
        i32.add
        local.get 3
        i32.const 264152
        call 79
        local.get 4
        i32.load offset=8
        local.set 5
        local.get 4
        i32.load offset=12
        local.set 6
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          local.get 3
          memory.copy
        end
        local.get 1
        call 85
        br 1 (;@1;)
      end
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.load
      local.set 5
      local.get 1
      i32.load offset=4
      local.set 6
      local.get 1
      i64.const 4294967296
      i64.store align=4
      local.get 1
      call 85
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 2
      local.get 3
      memory.copy
    end
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;85;) (type 6) (param i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 1
    i32.const -1
    i32.add
    i32.store offset=16
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 0
      i32.const 4
      i32.add
      i32.load
      call 89
    end)
  (func (;86;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 1
        i32.load offset=16
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i32.const 8
        i32.add
        local.get 3
        i32.const 264152
        call 79
        local.get 4
        i32.load offset=8
        local.set 5
        local.get 4
        i32.load offset=12
        local.set 6
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          local.get 3
          memory.copy
        end
        local.get 4
        local.get 3
        i32.store offset=28
        local.get 4
        local.get 6
        i32.store offset=24
        local.get 4
        local.get 5
        i32.store offset=20
        local.get 1
        call 85
        local.get 0
        local.get 4
        i32.const 20
        i32.add
        call 80
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 0
      local.get 1
      i32.load
      local.get 2
      i32.sub
      local.get 1
      i32.load offset=4
      i32.add
      i32.store offset=8
    end
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;87;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load
    i32.load offset=16
    i32.const 1
    i32.eq)
  (func (;88;) (type 0) (param i32 i32 i32)
    local.get 0
    i32.load
    call 85)
  (func (;89;) (type 5) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        local.get 2
        i32.const 12
        i32.add
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.store offset=12
      local.get 2
      i32.const 8
      i32.add
      local.set 2
    end
    local.get 2
    local.get 0
    i32.store)
  (func (;90;) (type 7)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 8
    i32.store offset=12
    local.get 0
    i32.const 263736
    i32.store offset=8
    local.get 0
    i32.const 1
    i32.store offset=20
    local.get 0
    i32.const 264168
    i32.store offset=16
    local.get 0
    i64.const 1
    i64.store offset=28 align=4
    local.get 0
    i32.const 5
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 0
    i32.const 16
    i32.add
    i32.const 263776
    call 28
    unreachable)
  (func (;91;) (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    local.get 0
    i32.load offset=8
    local.tee 5
    i32.const 2097152
    i32.and
    local.tee 6
    i32.const 21
    i32.shr_u
    local.get 4
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 8388608
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 8
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.set 9
        local.get 2
        local.set 10
        loop  ;; label = @3
          local.get 8
          local.get 9
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 9
          i32.const 1
          i32.add
          local.set 9
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 7
      i32.add
      local.set 7
    end
    i32.const 43
    i32.const 1114112
    local.get 6
    select
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        local.get 0
        i32.load16_u offset=12
        local.tee 6
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 16777216
              i32.and
              br_if 0 (;@5;)
              local.get 6
              local.get 7
              i32.sub
              local.set 12
              i32.const 0
              local.set 9
              i32.const 0
              local.set 6
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 29
                    i32.shr_u
                    i32.const 3
                    i32.and
                    br_table 2 (;@6;) 0 (;@8;) 1 (;@7;) 0 (;@8;) 2 (;@6;)
                  end
                  local.get 12
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 12
                i32.const 65534
                i32.and
                i32.const 1
                i32.shr_u
                local.set 6
              end
              local.get 5
              i32.const 2097151
              i32.and
              local.set 5
              local.get 0
              i32.load offset=4
              local.set 7
              local.get 0
              i32.load
              local.set 10
              loop  ;; label = @6
                local.get 9
                i32.const 65535
                i32.and
                local.get 6
                i32.const 65535
                i32.and
                i32.ge_u
                br_if 2 (;@4;)
                i32.const 1
                local.set 8
                local.get 9
                i32.const 1
                i32.add
                local.set 9
                local.get 10
                local.get 5
                local.get 7
                i32.load offset=16
                call_indirect (type 2)
                i32.eqz
                br_if 0 (;@6;)
                br 5 (;@1;)
              end
            end
            local.get 0
            local.get 0
            i64.load offset=8 align=4
            local.tee 13
            i32.wrap_i64
            i32.const -1612709888
            i32.and
            i32.const 536870960
            i32.or
            i32.store offset=8
            i32.const 1
            local.set 8
            local.get 0
            i32.load
            local.tee 10
            local.get 0
            i32.load offset=4
            local.tee 5
            local.get 11
            local.get 1
            local.get 2
            call 93
            br_if 3 (;@1;)
            i32.const 0
            local.set 9
            local.get 6
            local.get 7
            i32.sub
            i32.const 65535
            i32.and
            local.set 7
            loop  ;; label = @5
              local.get 9
              i32.const 65535
              i32.and
              local.get 7
              i32.ge_u
              br_if 2 (;@3;)
              i32.const 1
              local.set 8
              local.get 9
              i32.const 1
              i32.add
              local.set 9
              local.get 10
              i32.const 48
              local.get 5
              i32.load offset=16
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          i32.const 1
          local.set 8
          local.get 10
          local.get 7
          local.get 11
          local.get 1
          local.get 2
          call 93
          br_if 2 (;@1;)
          local.get 10
          local.get 3
          local.get 4
          local.get 7
          i32.load offset=12
          call_indirect (type 1)
          br_if 2 (;@1;)
          local.get 12
          local.get 6
          i32.sub
          i32.const 65535
          i32.and
          local.set 0
          i32.const 0
          local.set 9
          loop  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.const 65535
              i32.and
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            i32.const 1
            local.set 8
            local.get 9
            i32.const 1
            i32.add
            local.set 9
            local.get 10
            local.get 5
            local.get 7
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 1
        local.set 8
        local.get 10
        local.get 3
        local.get 4
        local.get 5
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 0
        local.get 13
        i64.store offset=8 align=4
        i32.const 0
        return
      end
      i32.const 1
      local.set 8
      local.get 0
      i32.load
      local.tee 9
      local.get 0
      i32.load offset=4
      local.tee 10
      local.get 11
      local.get 1
      local.get 2
      call 93
      br_if 0 (;@1;)
      local.get 9
      local.get 3
      local.get 4
      local.get 10
      i32.load offset=12
      call_indirect (type 1)
      local.set 8
    end
    local.get 8)
  (func (;92;) (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 1
    i32.store offset=16
    local.get 1
    i32.const 264168
    i32.store offset=12
    local.get 1
    i64.const 1
    i64.store offset=24 align=4
    local.get 1
    i32.const 7
    i32.store offset=40
    local.get 1
    local.get 0
    i32.load
    i32.store offset=44
    local.get 1
    local.get 1
    i32.const 36
    i32.add
    i32.store offset=20
    local.get 1
    local.get 1
    i32.const 44
    i32.add
    i32.store offset=36
    local.get 1
    local.get 1
    i32.const 12
    i32.add
    call 99
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call 2
    i32.const -1
    call 3
    unreachable)
  (func (;93;) (type 12) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 2)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 1))
  (func (;94;) (type 0) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 264104
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call 28
    unreachable)
  (func (;95;) (type 6) (param i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    i32.const 4
    i32.store
    local.get 1
    i32.const 2
    i32.store offset=12
    local.get 1
    i32.const 264136
    i32.store offset=8
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    local.get 1
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 2
    local.get 1
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 1
    local.get 2
    local.get 1
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    i32.const 262904
    call 28
    unreachable)
  (func (;96;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 4
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 268435456
            i32.and
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              local.get 3
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.tee 5
              i32.sub
              local.tee 6
              i32.add
              local.tee 7
              i32.const 3
              i32.and
              local.set 8
              i32.const 0
              local.set 9
              i32.const 0
              local.set 10
              block  ;; label = @6
                local.get 3
                local.get 5
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                local.set 10
                local.get 3
                local.set 0
                loop  ;; label = @7
                  local.get 10
                  local.get 0
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 10
                  local.get 0
                  i32.const 1
                  i32.add
                  local.set 0
                  local.get 6
                  i32.const 1
                  i32.add
                  local.tee 6
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                local.get 7
                i32.const -4
                i32.and
                i32.add
                local.set 0
                i32.const 0
                local.set 9
                loop  ;; label = @7
                  local.get 9
                  local.get 0
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 9
                  local.get 0
                  i32.const 1
                  i32.add
                  local.set 0
                  local.get 8
                  i32.const -1
                  i32.add
                  local.tee 8
                  br_if 0 (;@7;)
                end
              end
              local.get 7
              i32.const 2
              i32.shr_u
              local.set 6
              local.get 9
              local.get 10
              i32.add
              local.set 10
              loop  ;; label = @6
                local.get 5
                local.set 7
                local.get 6
                i32.eqz
                br_if 3 (;@3;)
                local.get 6
                i32.const 192
                local.get 6
                i32.const 192
                i32.lt_u
                select
                local.tee 11
                i32.const 3
                i32.and
                local.set 12
                local.get 11
                i32.const 2
                i32.shl
                local.set 13
                i32.const 0
                local.set 9
                block  ;; label = @7
                  local.get 6
                  i32.const 4
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 13
                  i32.const 1008
                  i32.and
                  i32.add
                  local.set 5
                  i32.const 0
                  local.set 9
                  local.get 7
                  local.set 0
                  loop  ;; label = @8
                    local.get 0
                    i32.const 12
                    i32.add
                    i32.load
                    local.tee 8
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 8
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 8
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 8
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 8
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 8
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 0
                    i32.load
                    local.tee 8
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 8
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 9
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 9
                    local.get 0
                    i32.const 16
                    i32.add
                    local.tee 0
                    local.get 5
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 6
                local.get 11
                i32.sub
                local.set 6
                local.get 7
                local.get 13
                i32.add
                local.set 5
                local.get 9
                i32.const 8
                i32.shr_u
                i32.const 16711935
                i32.and
                local.get 9
                i32.const 16711935
                i32.and
                i32.add
                i32.const 65537
                i32.mul
                i32.const 16
                i32.shr_u
                local.get 10
                i32.add
                local.set 10
                local.get 12
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 12
              i32.const 2
              i32.shl
              local.set 8
              local.get 7
              local.get 11
              i32.const 252
              i32.and
              i32.const 2
              i32.shl
              i32.add
              local.set 0
              i32.const 0
              local.set 9
              loop  ;; label = @6
                local.get 0
                i32.load
                local.tee 5
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 5
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 9
                i32.add
                local.set 9
                local.get 0
                i32.const 4
                i32.add
                local.set 0
                local.get 8
                i32.const -4
                i32.add
                local.tee 8
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 8
              i32.shr_u
              i32.const 16711935
              i32.and
              local.get 9
              i32.const 16711935
              i32.and
              i32.add
              i32.const 65537
              i32.mul
              i32.const 16
              i32.shr_u
              local.get 10
              i32.add
              local.set 10
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              i32.const 0
              local.set 10
              br 2 (;@3;)
            end
            i32.const 0
            local.set 10
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 10
              local.get 3
              local.get 0
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 10
              local.get 2
              local.get 0
              i32.const 1
              i32.add
              local.tee 0
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load16_u offset=14
                local.tee 6
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              local.get 2
              i32.add
              local.set 5
              i32.const 0
              local.set 2
              local.get 3
              local.set 9
              local.get 6
              local.set 8
              loop  ;; label = @6
                local.get 9
                local.tee 0
                local.get 5
                i32.eq
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load8_s
                    local.tee 9
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 9
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 2
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 9
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 3
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 4
                  i32.add
                  local.set 9
                end
                local.get 9
                local.get 0
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 8
                i32.const -1
                i32.add
                local.tee 8
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 8
          end
          local.get 6
          local.get 8
          i32.sub
          local.set 10
        end
        local.get 10
        local.get 1
        i32.load16_u offset=12
        local.tee 0
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load
      local.get 3
      local.get 2
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 1)
      return
    end
    local.get 0
    local.get 10
    i32.sub
    local.set 7
    i32.const 0
    local.set 0
    i32.const 0
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 29
          i32.shr_u
          i32.const 3
          i32.and
          br_table 2 (;@1;) 0 (;@3;) 1 (;@2;) 2 (;@1;) 2 (;@1;)
        end
        local.get 7
        local.set 10
        br 1 (;@1;)
      end
      local.get 7
      i32.const 65534
      i32.and
      i32.const 1
      i32.shr_u
      local.set 10
    end
    local.get 4
    i32.const 2097151
    i32.and
    local.set 6
    local.get 1
    i32.load offset=4
    local.set 9
    local.get 1
    i32.load
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.const 65535
          i32.and
          local.get 10
          i32.const 65535
          i32.and
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 1
          local.set 5
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 8
          local.get 6
          local.get 9
          i32.load offset=16
          call_indirect (type 2)
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 1
      local.set 5
      local.get 8
      local.get 3
      local.get 2
      local.get 9
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 7
      local.get 10
      i32.sub
      i32.const 65535
      i32.and
      local.set 10
      i32.const 0
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 65535
          i32.and
          local.get 10
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        i32.const 1
        local.set 5
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 8
        local.get 6
        local.get 9
        i32.load offset=16
        call_indirect (type 2)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 5)
  (func (;97;) (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 2))
  (func (;98;) (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.tee 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 0
    i64.load align=4
    i64.store offset=8
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 2
    i32.const 8
    i32.add
    call 43
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func (;99;) (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=12
    local.set 3
    local.get 1
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.load offset=4
                        local.tee 5
                        br_table 0 (;@10;) 1 (;@9;) 2 (;@8;)
                      end
                      block  ;; label = @10
                        local.get 3
                        br_if 0 (;@10;)
                        i32.const 1
                        local.set 1
                        i32.const 0
                        local.set 6
                        br 7 (;@3;)
                      end
                      i32.const 0
                      local.set 7
                      br 2 (;@7;)
                    end
                    local.get 3
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load offset=4
                    local.set 6
                    local.get 4
                    i32.load
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 4
                  i32.const 4
                  i32.add
                  local.set 6
                  i32.const 0
                  local.set 7
                  local.get 5
                  local.set 8
                  loop  ;; label = @8
                    local.get 6
                    i32.load
                    local.get 7
                    i32.add
                    local.set 7
                    local.get 6
                    i32.const 8
                    i32.add
                    local.set 6
                    local.get 8
                    i32.const -1
                    i32.add
                    local.tee 8
                    br_if 0 (;@8;)
                  end
                  local.get 3
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 7
                  i32.const 15
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=4
                  i32.eqz
                  br_if 2 (;@5;)
                end
                local.get 7
                i32.const 0
                local.get 7
                i32.const 0
                i32.gt_s
                select
                i32.const 1
                i32.shl
                local.set 7
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  i32.const -1
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 7
                  i32.eqz
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.load8_u offset=264180
                  drop
                  i32.const 1
                  local.get 7
                  call 19
                  local.tee 6
                  i32.eqz
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                i32.const 263244
                call 35
                unreachable
              end
              local.get 7
              call 29
              unreachable
            end
            i32.const 1
            local.set 6
            i32.const 0
            local.set 7
          end
          local.get 2
          i32.const 0
          i32.store offset=8
          local.get 2
          local.get 6
          i32.store offset=4
          local.get 2
          local.get 7
          i32.store
          block  ;; label = @4
            local.get 5
            br_table 0 (;@4;) 0 (;@4;) 0 (;@4;)
          end
          block  ;; label = @4
            local.get 2
            i32.const 263108
            local.get 1
            call 43
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            i64.load align=4
            i64.store align=4
            local.get 0
            i32.const 8
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            i32.store
            br 2 (;@2;)
          end
          i32.const 263276
          i32.const 86
          local.get 2
          i32.const 15
          i32.add
          i32.const 263260
          i32.const 263364
          call 62
          unreachable
        end
        local.get 2
        local.get 6
        call 15
        local.get 2
        i32.load offset=4
        local.set 8
        local.get 2
        i32.load
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=8
        local.set 7
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 1
          local.get 6
          memory.copy
        end
        local.get 0
        local.get 6
        i32.store offset=8
        local.get 0
        local.get 7
        i32.store offset=4
        local.get 0
        local.get 8
        i32.store
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 8
    local.get 2
    i32.load offset=8
    i32.const 264152
    call 16
    unreachable)
  (table (;0;) 38 38 funcref)
  (memory (;0;) 5)
  (global (;0;) (mut i32) (i32.const 262144))
  (global (;1;) i32 (i32.const 264192))
  (global (;2;) i32 (i32.const 264181))
  (export "memory" (memory 0))
  (export "deploy" (func 17))
  (export "main" (func 18))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (elem (;0;) (i32.const 1) func 8 9 53 97 96 65 98 39 40 41 42 38 63 76 77 78 81 82 49 52 55 57 58 72 73 74 75 67 68 69 70 71 83 84 86 87 88)
  (data (;0;) (i32.const 262144) "/home/tal-valdar/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.10.1/src/bytes_mut.rs\00library/alloc/src/fmt.rs\00/home/tal-valdar/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.10.1/src/bytes.rs\00/home/tal-valdar/.cargo/git/checkouts/fluentbase-7aa27bb01826b09e/83004fa/crates/codec/src/encoder.rs\00library/alloc/src/string.rs\00/rustc/f3db63916e541ff039ac3cd7364c2d612749b61b/library/alloc/src/slice.rs\00/rustc/f3db63916e541ff039ac3cd7364c2d612749b61b/library/alloc/src/raw_vec/mod.rs\00library/alloc/src/alloc.rs\00/home/tal-valdar/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.10.1/src/lib.rs\00/home/tal-valdar/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/byteorder-1.5.0/src/lib.rs\00\00\00\00\dd\00\04\00f\00\00\00\bd\00\00\00\1e\00\00\00\00\00\04\00d\00\00\00\95\00\00\00\1c\00\00\00t\02\04\00a\00\00\00\c0\07\00\00\0c\00\00\00cannot advance past `remaining`: \00\00\00\08\03\04\00!\00\00\00\f8\05\04\00\04\00\00\00}\00\04\00`\00\00\00\c7\02\00\00\09\00\00\00\ca\02\04\00\0b\00\00\00\14\00\00\00\01\00\00\00unsupported method selector\00\5c\03\04\00\1b\00\00\00insufficient input length for method selector\00\00\00\80\03\04\00-\00\00\00HelloError\00\00\08\00\00\00\0c\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00capacity overflow\00\00\00\dc\03\04\00\11\00\00\00\da\01\04\00!\00\00\00.\02\00\00\11\00\00\00memory allocation of  bytes failed\00\00\08\04\04\00\15\00\00\00\1d\04\04\00\0d\00\00\00\fb\01\04\00\1b\00\00\00\b5\01\00\00\0d\00\00\00C\01\04\00\1c\00\00\00\e8\01\00\00\17\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00a formatting trait implementation returned an error when the underlying stream did not\00\00d\00\04\00\19\00\00\00\8a\02\00\00\0e\00\00\00abort\00\00\00\16\02\04\00^\00\00\00n\00\00\00\09\00\00\00advance out of bounds: the len is  but advancing by \ec\04\04\00\22\00\00\00\0e\05\04\00\12\00\00\00\16\02\04\00^\00\00\00\ac\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0d\00\00\00called `Result::unwrap()` on an `Err` valueLayoutError\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\16\00\00\00\1b\00\00\00}\00\04\00`\00\00\00H\05\00\002\00\00\00}\00\04\00`\00\00\00V\05\00\00I\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00 <= split_off out of bounds: \00\00\00\fc\05\04\00\19\00\00\00\f8\05\04\00\04\00\00\00\00\00\04\00d\00\00\00A\01\00\00\09\00\00\00overflow\00\00\04\00d\00\00\00\aa\02\00\00\15\00\00\00\00\00\04\00d\00\00\00\00\03\00\00'\00\00\00\00\00\04\00d\00\00\00\d4\02\00\008\00\00\00!\00\00\00\22\00\00\00#\00\00\00$\00\00\00%\00\00\00\aa\01\04\00Q\00\00\00.\02\00\00\11\00\00\00: \00\00\01\00\00\00\00\00\00\00\94\06\04\00\02\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899range start index  out of range for slice of length \00\00r\07\04\00\12\00\00\00\84\07\04\00\22\00\00\00range end index \b8\07\04\00\10\00\00\00\84\07\04\00\22\00\00\00_\01\04\00K\00\00\00\c1\01\00\00\1d\00\00\00\01\00\00\00\00\00\00\00"))
